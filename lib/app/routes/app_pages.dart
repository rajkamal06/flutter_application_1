import 'package:get/get.dart';

import 'package:flutter_application_1/app/modules/home/views/home_view.dart';
import 'package:flutter_application_1/app/modules/home/views/login_view.dart';
import 'package:flutter_application_1/app/modules/home/views/search_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.TEACHERDETAILS;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      children: [
        
      ],
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => SearchView(),
    ),
  ];
}
