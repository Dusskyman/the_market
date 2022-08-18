import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:the_market/config/app_router.dart';
import 'package:the_market/layouts/main_layout.dart';
import 'package:the_market/models/product/product_dto/product_dto.dart';
import 'package:the_market/network/api/api.dart';
import 'package:the_market/pages/market_page/subpages/products_vm.dart';
import 'package:the_market/pages/market_page/widgets/review_item.dart';
import 'package:the_market/services/connection_service/connection_service.dart';
import 'package:the_market/store/application/app_state.dart';
import 'package:the_market/widgets/buttons/general_button.dart';
import 'package:the_market/widgets/dialogs/write_review_snack/write_review_snack_widget.dart';

class ProductDetailsPage extends StatefulWidget {
  final int id;
  final String title;
  final String img;
  final String text;
  const ProductDetailsPage({
    required this.id,
    required this.title,
    required this.img,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  bool bottomSheetIsOpen = false;
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ProductsVM>(
      converter: ((store) => ProductsVM.fromStore(store)),
      onInitialBuild: (vm) async {
        vm.cleanReviews();
        vm.getReviews(widget.id);
      },
      builder: (context, vm) {
        return MainLayout(
          appbar: AppBar(
            backgroundColor: Colors.orangeAccent,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          floatingActionButton: !vm.hasConnection || vm.user?.username == null
              ? null
              : Builder(builder: (context) {
                  return GeneralButton(
                    borderRadius: BorderRadius.circular(64.0),
                    width: 48.0,
                    height: 48.0,
                    child: const Icon(
                      Icons.comment,
                      size: 20.0,
                    ),
                    onTap: () {
                      if (bottomSheetIsOpen) {
                        RouteService.instance.pop();
                        bottomSheetIsOpen = false;
                      } else {
                        bottomSheetIsOpen = true;
                        showBottomSheet(
                          context: context,
                          builder: (context) => WriteReviewSnackWidget(
                            id: widget.id,
                            ontap: () {
                              RouteService.instance.pop();
                              bottomSheetIsOpen = false;
                            },
                          ),
                        );
                      }
                    },
                  );
                }),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: widget.id,
                  child: AspectRatio(
                    aspectRatio: 16.0 / 9.0,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(32.0),
                          child: Image.network(
                            Api.imageApi + widget.img,
                            width: double.infinity,
                          ),
                        ),
                        if (vm.user!.username != null && !vm.containsValue(widget.id) && vm.hasConnection)
                          GeneralButton(
                            borderRadius: BorderRadius.circular(64.0),
                            width: 48.0,
                            height: 48.0,
                            child: const Icon(
                              Icons.add,
                              size: 20.0,
                            ),
                            onTap: () {
                              vm.saveProduct(ProductDto(id: widget.id, img: widget.img, text: widget.text, title: widget.title));
                            },
                          ),
                        if (vm.user!.username != null && vm.containsValue(widget.id))
                          GeneralButton(
                            borderRadius: BorderRadius.circular(64.0),
                            width: 48.0,
                            height: 48.0,
                            child: const Icon(
                              Icons.remove,
                              size: 20.0,
                            ),
                            onTap: () {
                              vm.deleteProducts(ProductDto(id: widget.id, img: widget.img, text: widget.text, title: widget.title));
                              if (!vm.hasConnection) {
                                RouteService.instance.pop();
                              }
                            },
                          ),
                      ],
                    ),
                  ),
                ),
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16.0),
                Text(
                  widget.text,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                vm.reviews!.isNotEmpty && vm.hasConnection
                    ? Expanded(
                        child: ListView.builder(
                          itemCount: vm.reviews!.length,
                          itemBuilder: (context, index) {
                            return ReviewItem(
                              id: vm.reviews![index].id!,
                              rate: vm.reviews![index].id!,
                              text: vm.reviews![index].text!,
                              creatorId: vm.reviews![index].createdBy!.id!,
                              creatorName: vm.reviews![index].createdBy!.username!,
                              createdAt: vm.reviews![index].createdAt!,
                            );
                          },
                        ),
                      )
                    : const Expanded(
                        child: Center(
                          child: CircularProgressIndicator(
                            color: Colors.black,
                          ),
                        ),
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
