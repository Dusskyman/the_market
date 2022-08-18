import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';

class ReviewItem extends StatelessWidget {
  final int id;
  final int rate;
  final String text;
  final int creatorId;
  final String creatorName;
  final String createdAt;
  const ReviewItem({
    required this.id,
    required this.rate,
    required this.text,
    required this.creatorId,
    required this.creatorName,
    required this.createdAt,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DateFormat format = DateFormat.yMEd();
    final Size querrySize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    creatorName,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    format.format(DateTime.parse(createdAt).toLocal()),
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              IgnorePointer(
                child: RatingBar(
                  initialRating: rate.toDouble(),
                  itemSize: 24.0,
                  direction: Axis.horizontal,
                  itemCount: 5,
                  ratingWidget: RatingWidget(
                    full: const Icon(Icons.star, color: Colors.amber),
                    half: const Icon(Icons.star_half_outlined, color: Colors.amber),
                    empty: const Icon(Icons.star_border_outlined, color: Colors.amber),
                  ),
                  onRatingUpdate: (rating) {},
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
