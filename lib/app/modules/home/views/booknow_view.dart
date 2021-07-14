import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BooknowView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 10,
        iconTheme: IconThemeData(
          color: Colors.red,
        ),
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1 hour lession and photo
              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          child: Text(
                            '1 Hour Lession',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Text(
                            'Select Your Suitable Time Below',
                            style: TextStyle(color: Colors.black45),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 30, right: 30),
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            blurRadius: 7,
                            spreadRadius: 2,
                            offset: Offset(0, 6)),
                      ]),
                      child: CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage('assets/user3.jpg'),
                      )),
                ],
              ),

              // Row Button of days

              Container(
                height: 85,
                margin: EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    dayButton('Today'),
                    dayButton('14 July'),
                    dayButton('15 July'),
                    dayButton('16 July'),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
              ),
              Container(
                margin: EdgeInsets.only(left: 30, top: 20),
                child: Text(
                  'Select Your Local Time Zone',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  timeButton('12:00 AM'),
                  timeButton('04:00 AM'),
                  timeButton('06:00 AM'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  timeButton('12:00 AM'),
                  timeButton('04:00 AM'),
                  timeButton('06:00 AM'),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xffDB0000),
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        spreadRadius: 2,
                        offset: Offset(0, 5)),
                  ]),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Pay Now',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  dayButton(day) {
    return Container(
      width: 130,
      // padding: const EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Color(0xffDB0000),
          borderRadius: BorderRadius.circular(7),
          boxShadow: [
            BoxShadow(color: Colors.black26, blurRadius: 5, spreadRadius: 2)
          ]),
      child: TextButton(
        onPressed: () {},
        child: Text(
          day,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }

  timeButton(time) {
    return Container(
      margin: EdgeInsets.only(top: 40, left: 10, right: 10),
      width: 110,
      // padding: const EdgeInsets.all(10),
      // margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.circular(7),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
                spreadRadius: 2,
                offset: Offset(0, 5)),
          ]),
      child: TextButton(
        onPressed: () {},
        child: Text(
          time,
          style: TextStyle(color: Colors.red, fontSize: 20),
        ),
      ),
    );
  }
}
