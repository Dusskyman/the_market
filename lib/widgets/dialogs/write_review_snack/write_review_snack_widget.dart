import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:the_market/models/product/review/write_review_dto/write_review_dto.dart';
import 'package:the_market/pages/market_page/subpages/products_vm.dart';
import 'package:the_market/store/application/app_state.dart';
import 'package:the_market/widgets/buttons/general_button.dart';
import 'package:the_market/widgets/textfields/app_text_field.dart';

class WriteReviewSnackWidget extends StatefulWidget {
  final int id;
  final void Function()? ontap;
  const WriteReviewSnackWidget({
    required this.id,
    this.ontap,
    Key? key,
  }) : super(key: key);

  @override
  State<WriteReviewSnackWidget> createState() => _WriteReviewSnackWidgetState();
}

class _WriteReviewSnackWidgetState extends State<WriteReviewSnackWidget> {
  int rate = 5;
  String text = '';
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ProductsVM>(
        converter: (store) => ProductsVM.fromStore(store),
        builder: (context, vm) {
          return DecoratedBox(
            decoration: const BoxDecoration(
              color: Colors.white,
              border: BorderDirectional(
                top: BorderSide(width: 5.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Text(vm.user!.username!),
                            const SizedBox(width: 16.0),
                            RatingBar(
                              initialRating: 5,
                              itemSize: 24.0,
                              ratingWidget: RatingWidget(
                                full: const Icon(Icons.star, color: Colors.amber),
                                half: const Icon(Icons.star_half_outlined, color: Colors.amber),
                                empty: const Icon(Icons.star_border_outlined, color: Colors.amber),
                              ),
                              onRatingUpdate: (rating) {
                                rate = rating.toInt();
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        SizedBox(
                          height: 128.0,
                          width: double.infinity,
                          child: AppTextField(
                            hintText: '${vm.user!.username!}, please, leave review',
                            minlines: 5,
                            maxlines: 6,
                            maxSymbols: 300,
                            keyboardType: TextInputType.multiline,
                            onChanged: (value) {
                              text = value;
                            },
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        GeneralButton(
                          child: const Text('Send review'),
                          onTap: () {
                            setState(() {});
                            if (widget.ontap != null) {
                              widget.ontap!();
                              vm.writeReview(
                                widget.id,
                                WriteReviewDto(rate: rate, text: text),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
