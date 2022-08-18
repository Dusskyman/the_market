import 'package:flutter/material.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:the_market/config/app_router.dart';
import 'package:the_market/models/auth/user_dto.dart/user_dto.dart';
import 'package:the_market/models/product/product_dto/product_dto.dart';
import 'package:the_market/repository/local_storage/product_storage/product_storage.dart';
import 'package:the_market/repository/local_storage/token_storage/token_storage.dart';
import 'package:the_market/repository/local_storage/user_storage/user_storage.dart';

import 'package:the_market/shared/base_epic.dart';
import 'package:the_market/store/application/app_state.dart';
import 'package:the_market/store/auth/auth_action.dart';

import 'package:the_market/store/initialization/init_action.dart';
import 'package:the_market/store/market/market_action.dart';

class InitEpic extends BaseEpic<InitAction> {
  @override
  Stream epic(InitAction action, EpicStore<AppState> store) async* {
    try {
      final String? token = await TokenStorage.instance().getToken();
      if (token != null) {
        final UserDto? user = await UserStorage.instance().getUser();
        List<ProductDto> products = await ProductStorage.instance().getProducts();
        yield* Stream.value(SaveProductToStateAction(productDto: products));
        yield* Stream.value(SaveUserAction(userDto: user!));
        RouteService.instance.push(const LoginPageRoute());
        RouteService.instance.push(const MarketPageRoute());
      } else {
        RouteService.instance.pushAndPopUntil(const LoginPageRoute(), predicate: (Route<dynamic> route) => false);
      }
    } catch (error) {}
  }
}
