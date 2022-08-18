import 'package:flutter/material.dart';
import 'package:the_market/config/app_router.dart';
import 'package:the_market/network/api/api.dart';
import 'package:the_market/theme/app_image.dart';

class ProductItem extends StatelessWidget {
  final int id;
  final String title;
  final String img;
  final String text;
  final bool isSaved;
  const ProductItem({
    required this.id,
    required this.title,
    required this.img,
    required this.text,
    required this.isSaved,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final querrySize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black38),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(5, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: InkWell(
            onTap: () {
              RouteService.instance.push(ProductDetailsPageRoute(id: id, title: title, img: img, text: text));
            },
            child: SizedBox(
              height: querrySize.height * 0.1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: id,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Image.network(
                        Api.imageApi + img,
                        errorBuilder: (context, error, stackTrace) => Image.asset(AppImage.questionMark),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              title,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            if (isSaved) const Icon(Icons.save)
                          ],
                        ),
                        Text(
                          text,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
