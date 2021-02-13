import 'package:auto_route/auto_route_annotations.dart';
import 'package:uber_clone/presentation/home/home_page.dart';
import 'package:uber_clone/presentation/register/register_page.dart';
import 'package:uber_clone/presentation/sign_in/sign_in_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SignInPage,initial: true),
    MaterialRoute(page: RegisterPage),
    MaterialRoute(page: HomePage),
  ],
)
class $Router {}
