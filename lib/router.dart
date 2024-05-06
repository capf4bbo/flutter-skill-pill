import 'package:flutterpill01/models/product.dart';
import 'package:flutterpill01/pages/home-page.dart';
import 'package:flutterpill01/pages/product-page.dart';
import 'package:flutterpill01/pages/settings-page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(debugLogDiagnostics: true, routes: [
  GoRoute(
      name: 'root',
      path: '/',
      builder: (_, __) => const HomePage(),
      routes: [
        GoRoute(
          path: "settings",
          builder: (_, __) => const SettingsPage(),
        )
      ]),
  GoRoute(
    name: 'product',
    path: '/product',
    builder: (_, routerState) => ProductPage(
      product: routerState.extra as Product?,
    ),
  ),
]);
