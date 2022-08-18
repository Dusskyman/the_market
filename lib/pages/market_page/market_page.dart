import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:the_market/config/app_router.dart';
import 'package:the_market/config/app_routes.dart';
import 'package:the_market/layouts/main_layout.dart';
import 'package:the_market/pages/auth_pages/auth_vm.dart';
import 'package:the_market/pages/market_page/subpages/products_page/products_page.dart';
import 'package:the_market/store/application/app_state.dart';
import 'package:the_market/widgets/dialogs/exit_dialog/exit_dialog_widget.dart';
import 'package:the_market/widgets/user_icon/user_icon.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({Key? key}) : super(key: key);

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AuthVM>(
      converter: (store) => AuthVM.fromStore(store),
      builder: (context, vm) {
        return MainLayout(
          appbar: AppBar(
            backgroundColor: Colors.orangeAccent,
            actions: [
              if (vm.user?.username != null && vm.hasConnection)
                UserIcon(
                  imagePath: vm.user?.imagePath,
                  onTap: () {
                    RouteService.instance.pushNamed(AppRoutes.routeUserDetails);
                  },
                )
            ],
            leading: InkWell(
              onTap: () {
                RouteService.instance.pop();
              },
              child: const Icon(Icons.exit_to_app_outlined),
            ),
          ),
          onWillPop: () async {
            bool logout =
                await showDialog(context: context, builder: (context) => const ExitWidgetDialog(title: 'Do you want to exit app?')) ?? false;
            if (logout) {
              vm.logout();
            }
            return logout;
          },
          child: const ProductsPage(),
        );
      },
    );
  }
}
