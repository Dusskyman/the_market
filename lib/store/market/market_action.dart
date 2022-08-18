import 'package:the_market/models/product/product_dto/product_dto.dart';
import 'package:the_market/models/product/review/review_dto/review_dto.dart';
import 'package:the_market/models/product/review/write_review_dto/write_review_dto.dart';
import 'package:the_market/shared/base_action.dart';

class GetProductsAction extends BaseAction {
  GetProductsAction() : super(type: 'GetProductsAction');
}

class SaveProductsAction extends BaseAction {
  List<ProductDto>? products;
  SaveProductsAction({this.products}) : super(type: 'SaveProductsAction');
}

class GetReviewAction extends BaseAction {
  final int id;
  GetReviewAction(this.id) : super(type: 'GetReviewAction');
}

class SaveReviewsAction extends BaseAction {
  List<ReviewDto>? reviews;
  SaveReviewsAction({this.reviews}) : super(type: 'SaveReviewsAction');
}

class WriteReviewsAction extends BaseAction {
  int id;
  WriteReviewDto writeReviewDto;
  WriteReviewsAction({
    required this.id,
    required this.writeReviewDto,
  }) : super(type: 'WriteReviewsAction');
}

class SaveProductToStorageAction extends BaseAction {
  ProductDto productDto;
  SaveProductToStorageAction({
    required this.productDto,
  }) : super(type: 'SaveProductAction');
}

class DeleteProductToStorageAction extends BaseAction {
  ProductDto productDto;
  DeleteProductToStorageAction({
    required this.productDto,
  }) : super(type: 'SaveProductAction');
}

class SaveProductToStateAction extends BaseAction {
  List<ProductDto> productDto;
  SaveProductToStateAction({
    required this.productDto,
  }) : super(type: 'SaveProductToStateAction');
}

class DeleteProductToStateAction extends BaseAction {
  List<ProductDto> productDto;
  DeleteProductToStateAction({
    required this.productDto,
  }) : super(type: 'DeleteProductToStateAction');
}
