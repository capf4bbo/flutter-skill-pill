import 'package:flutterpill01/pages/home_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(debugLogDiagnostics: true, routes: [
  GoRoute(
    name: 'root',
    path: '/',
    builder: (_, __) => HomePage(),
  ),
  // TODO Exercise 2
]);
