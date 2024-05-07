import 'package:flutterpill01/models/product.dart';
import 'package:flutterpill01/pages/home_page.dart';
import 'package:flutterpill01/pages/product_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(debugLogDiagnostics: true, routes: [
  GoRoute(
    name: 'root',
    path: '/',
    builder: (_, __) => HomePage(),
  ),
  // Exercise 2
  GoRoute(
    name: 'product',
    path: '/product',
    builder: (_, routerState) => ProductPage(
      product: routerState.extra as Product?,
    ),
  ),
]);
