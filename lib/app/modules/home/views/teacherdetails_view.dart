import 'package:flutter/material.dart';

import 'package:get/get.dart';

class TeacherdetailsView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: ListView(children: [
        Container(
            height: 45,
            margin: EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.red,
                width: 1,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Here..',
                border: InputBorder.none,
              ),
            ),
          ),
      ],),
    );
  }
}
