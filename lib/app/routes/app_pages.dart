import 'package:flutter_application_1/app/modules/home/views/booknow_view.dart';
import 'package:flutter_application_1/app/modules/home/views/notification_view.dart';
import 'package:flutter_application_1/app/modules/home/views/teacherdetails_view.dart';
import 'package:get/get.dart';

import 'package:flutter_application_1/app/modules/home/views/home_view.dart';
import 'package:flutter_application_1/app/modules/home/views/login_view.dart';
import 'package:flutter_application_1/app/modules/home/views/search_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      children: [],
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => SearchView(),
    ),
    GetPage(
      name: _Paths.TEACHERDETAILS,
      page: () => TeacherdetailsView(),
    ),
     GetPage(
      name: _Paths.NOTIFICATION,
      page: () => NotificationView(),
    ),
    GetPage(
      name: _Paths.BOOKNOW,
      page: () => BooknowView(),
    ),
  ];
}
