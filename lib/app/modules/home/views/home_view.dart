import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/home/views/login_view.dart';
import 'package:flutter_application_1/app/modules/home/views/search_view.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'notification_view.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final children = [
      homeItem(),
      SearchView(),
      NotificationView(),
      LoginView(),
    ];
    Get.lazyPut(() => HomeController());

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.cyanAccent),
      home: Obx(
        () => Scaffold(
          appBar: AppBar(
            elevation: 10,
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
          ),
          drawer: Drawer(
            elevation: 10,
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                    accountName: Text('Raj'),
                    accountEmail: Text('rkkumawat6864@gmail.com'))
              ],
            ),
          ),
          body: children[controller.currentIndex.value],
          bottomNavigationBar: BottomNavigationBar(
            // fixedColor: Color(0xffDB0000),
            unselectedItemColor: Color(0xff909090),
            selectedItemColor: Colors.red,
            // selectedIconTheme: IconThemeData(
            //   color: Colors.red,
            // ),
            showUnselectedLabels: false,
            showSelectedLabels: false,
            iconSize: 30,
            onTap: (value) {
              controller.currentIndex.value = value;
            },
            currentIndex: controller.currentIndex.value,
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home,
                  color: controller.currentIndex.value == 0
                      ? Colors.red
                      : Colors.grey,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Search',
                icon: new Icon(
                  Icons.search,
                  color: controller.currentIndex.value == 1
                      ? Colors.red
                      : Colors.grey,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Notifications',
                icon: new Icon(
                  Icons.notifications,
                  color: controller.currentIndex.value == 2
                      ? Colors.red
                      : Colors.grey,
                ),
              ),
              BottomNavigationBarItem(
                label: 'user',
                icon: new Icon(
                  Icons.account_circle_rounded,
                  color: controller.currentIndex.value == 3
                      ? Colors.red
                      : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  homeItem() {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          child: CarouselSlider.builder(
            options: CarouselOptions(
              // height: 250,
              aspectRatio: 16 / 9,
              viewportFraction: .95,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              // onPageChanged: callbackFunction,
              scrollDirection: Axis.horizontal,
            ),
            itemCount: 15,
            itemBuilder: (
              BuildContext context,
              int itemIndex,
              int pageViewIndex,
            ) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/pumplate2.jpg',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          height: 60,
          child: Row(
            children: [
              Container(
                width: 115,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffDB0000),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: const Offset(
                        0.0,
                        5.0,
                      ),
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                    ),
                  ],
                ),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'English',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
              ),
              Container(
                width: 115,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffDB0000),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: const Offset(
                        0.0,
                        5.0,
                      ),
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                    ),
                  ],
                ),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Hindi',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
              ),
              Container(
                width: 115,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffDB0000),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: const Offset(
                        0.0,
                        5.0,
                      ),
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                    ),
                  ],
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Rajasthani',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Container(
                // margin: EdgeInsets.only(top: 30),
                child: InkWell(
                  onTap: () {
                    controller.currentIndex.value = 1;
                    // Get.offNamed('/search');
                  },
                  child: Text(
                    "More..",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 3,
          height: 20,
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Text(
            'Top Rating',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff909090),
            ),
          ),
        ),
        userPhoto(),
        Divider(
          thickness: 3,
          height: 20,
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Text(
            'English',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff909090),
            ),
          ),
        ),
        userPhoto(),
        Divider(
          thickness: 3,
          height: 20,
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Text(
            'Hindi',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff909090),
            ),
          ),
        ),
        userPhoto(),
        Divider(
          thickness: 3,
          height: 20,
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Text(
            'Rajashtani',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff909090),
            ),
          ),
        ),
        userPhoto(),
      ],
    );
  }

  userPhoto() {
    return Container(
      height: 145,
      child: ListView(
        scrollDirection: Axis.horizontal,
        // child: Padding(
        //   padding: const EdgeInsets.only(top: 20),
        children: [
          teachers('Preeti', 'assets/user3.jpg'),
          teachers('Dharmedra', 'assets/user5.jpg'),
          teachers('Prerna', 'assets/user3.jpg'),
          teachers('Dharmedra', 'assets/user5.jpg'),
          teachers('Prerna', 'assets/user3.jpg'),
          teachers('Dharmedra', 'assets/user5.jpg'),
          teachers('Pooja', 'assets/user3.jpg'),
          teachers('Dharmedra', 'assets/user5.jpg'),
        ],
      ),
    );
  }

  teachers(name, imagepath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 5.0,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: InkWell(
              onTap: () {
                Get.toNamed('/teacherdetails');
              },
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(imagepath),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
