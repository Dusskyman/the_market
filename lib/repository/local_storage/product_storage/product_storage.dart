import 'package:logging/logging.dart';
import 'package:the_market/conts.dart';
import 'package:the_market/models/product/product_dto/product_dto.dart';
import 'package:the_market/services/istorage.dart';
import 'package:the_market/services/storage.dart';

class ProductStorage {
  final IStorage _storage;

  ProductStorage._(this._storage);

  static final ProductStorage _productStorage = ProductStorage._(Storage.instance());

  static ProductStorage instance() => _productStorage;

  static const String _productsKey = AppConsts.productsKey;

  Logger get logger => Logger('[$runtimeType]');

  Future<void> saveProducts(List<ProductDto> products) async {
    logger.info('SAVING USER TO STORAGE ${products.toString()}');
    final List<Map<String, dynamic>> tempMap = products.map((e) => e.toJson()).toList();

    await _storage.save(_productsKey, tempMap);
  }

  Future<List<ProductDto>> getProducts() async {
    try {
      final productMap = await _storage.take<List<dynamic>>(_productsKey);
      if (productMap != null && productMap.isNotEmpty) {
        logger.info('<getProducts> => Object: $productMap');
        final List<Map<String, dynamic>> convertedList = [];
        final List<ProductDto> products = [];
        for (var value in productMap) {
          final Map<String, dynamic> converter = {};
          value.forEach((key, value) {
            converter.addAll({key.toString(): value});
          });
          convertedList.add(converter);
        }
        for (var value in convertedList) {
          products.add(ProductDto.fromJson(value));
        }

        return products;
      }
      return [];
    } catch (e) {
      logger.warning('<getProducts> => error: $e');
      return [];
    }
  }

  Future<void> clearProducts() async {
    try {
      await _storage.save(_productsKey, []);
      await _storage.delete(_productsKey);
      logger.info('Products was removed from storage');
    } catch (e) {
      logger.warning('<getProducts> => error: $e');
    }
  }
}
