import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/features/counter/presentation/screens/counter_page.dart';
import 'package:flutter_project/features/landing/presentation/screens/landing_page.dart';


import '../bpp-shop-seller/features/auth/presentation/screens/sign_in_screen.dart';
import '../features/authentication/presentation/screens/login_screen.dart';
import '../features/dashboard/presentation/screens/dashboard_screen.dart';
import '../features/splash/presentation/screens/splash_screen.dart';
import '../features/test_api/presentation/screens/test_api_screen.dart';
part 'app_route.gr.dart';


@AutoRouterConfig(replaceInRouteName: 'Screen,Route')


class AppRouter extends _$AppRouter {


  // @override
  // RouteType get defaultRouteType => const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [

        AutoRoute(page: SignInRoute.page,initial: true),
        /// routes go here
        AutoRoute(page: SplashRoute.page),
        //AutoRoute(page: TestApiRoute.page,),
        AutoRoute(page: LoginRoute.page,),
        AutoRoute(page: DashboardRoute.page),
      ];

}
