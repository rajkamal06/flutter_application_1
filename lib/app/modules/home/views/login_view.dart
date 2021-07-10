import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LoginView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: homeUser(),
    );
  }

  homeUser() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30,left: 10),
                  height: 80,
                  decoration: BoxDecoration(
                    shape:
                        BoxShape.circle, // BoxShape.circle or BoxShape.retangle
                    //color: const Color(0xFF66BB6A),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 5.0,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    // margin: EdgeInsets.only(top: 30)
                    radius: 50,
                    backgroundImage: AssetImage('assets/user3.jpg'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: 30,
                    left: 15,
                    
                  ),
                  child: Text(
                    'Prerna',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(top: 30, right: 30),
              child: Icon(
                Icons.edit,
                size: 30,
              ),
            ),
          ],
        ),
        Divider(
          height: 30,
          color: Colors.black,
          thickness: .40,
        ),
        ListTile(
          leading: Icon(
            Icons.book_outlined,
            size: 30,
            color: Colors.black,
          ),
          title: Text(
            'My Course',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.contacts,
            size: 30,
            color: Colors.black,
          ),
          title: Text(
            'Contact Us',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.share_outlined,
            size: 30,
            color: Colors.black,
          ),
          title: Text(
            'Refer a Friend',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.book_outlined,
            size: 30,
            color: Colors.black,
          ),
          title: Text(
            'Privicy & Policy',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.book_outlined,
            size: 30,
            color: Colors.black,
          ),
          title: Text(
            'Terms & Conditions',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.book_outlined,
            size: 30,
            color: Colors.black,
          ),
          title: Text(
            'How To Book A Course',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.power_settings_new,
            size: 30,
            color: Colors.black,
          ),
          title: Text(
            'Log Out',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
