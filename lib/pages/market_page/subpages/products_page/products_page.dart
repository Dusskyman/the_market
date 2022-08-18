import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:the_market/layouts/main_layout.dart';
import 'package:the_market/pages/market_page/subpages/products_vm.dart';
import 'package:the_market/pages/market_page/widgets/product_item.dart';
import 'package:the_market/store/application/app_state.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ProductsVM>(
      converter: ((store) => ProductsVM.fromStore(store)),
      onInitialBuild: (vm) async {
        if (vm.hasConnection) {
          vm.getProducts();
        }
      },
      builder: (context, vm) {
        return MainLayout(
          child: vm.hasConnection
              ? ListView.builder(
                  itemCount: vm.products!.length,
                  itemBuilder: (context, index) {
                    return ProductItem(
                      id: vm.products![index].id!,
                      title: vm.products![index].title!,
                      img: vm.products![index].img!,
                      text: vm.products![index].text!,
                      isSaved: vm.user?.username != null && vm.containsValue(vm.products![index].id!),
                    );
                  },
                )
              : ListView.builder(
                  itemCount: vm.savedProducts!.length,
                  itemBuilder: (context, index) {
                    return ProductItem(
                      id: vm.savedProducts![index].id!,
                      title: vm.savedProducts![index].title!,
                      img: vm.savedProducts![index].img!,
                      text: vm.savedProducts![index].text!,
                      isSaved: true,
                    );
                  },
                ),
        );
      },
    );
  }
}
