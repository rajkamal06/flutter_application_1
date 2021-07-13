import 'package:flutter/material.dart';

import 'package:get/get.dart';

class NotificationView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: Text(
          'You have no Notification',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
