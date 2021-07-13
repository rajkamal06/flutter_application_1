import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

class TeacherdetailsView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.red,
        ),
      ),
      body: ListView(
        children: [
          // Video
          Container(
            height: 250,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              //  shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/user8.jpg',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Center(child: Icon(Icons.play_circle_outline_sharp, size: 45)),
              ],
            ),
          ),

          //Teacher Short details like : name experince,fees,photo
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30, left: 10),
                  height: 100,
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
                  child: CircleAvatar(
                    // margin: EdgeInsets.only(top: 30)
                    radius: 60,
                    backgroundImage: AssetImage('assets/user3.jpg'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Prerna Kumari',
                              style: TextStyle(fontWeight: FontWeight.w900)),
                          Icon(Icons.verified, color: Colors.red[700]),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          'HIndi Expert- 3 Year Experince',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      Container(
                        width: 190,
                        // width:MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(top: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '1800INR/H',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Buttons :schedule, 999 Review, Message
          Container(
            margin: EdgeInsets.only(left: 40, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 45,
                  width: 98,
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffDB0000),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 2.0,
                        spreadRadius: 2.0,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'View Schedule',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )),
                ),
                Container(
                  height: 45,
                  width: 98,
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffDB0000),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 2.0,
                        spreadRadius: 2.0,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        '999 Review',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )),
                ),
                Container(
                  height: 45,
                  width: 98,
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffDB0000),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 2.0,
                        spreadRadius: 2.0,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Message',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )),
                ),
              ],
            ),
          ),

          // Divider below Button
          Container(
            margin: EdgeInsets.only(right: 45, left: 45, top: 10),
            child: Divider(
              thickness: 2,
            ),
          ),

          // About Me
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'About Me',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w900),
            ),
          ),

          // about Me description
          Container(
            margin: EdgeInsets.only(left: 10, top: 20, right: 10),
            child: ReadMoreText(
              'This Code Can be used in log in to your Telegran account. We never ask if for anything else.' +
                  'This Code Can be used in log in to your Telegran account. We never ask if for anything else.' +
                  'This Code Can be used in log in to your Telegran account. We never ask if for anything else' +
                  ' Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
              trimLines: 4,
              style: TextStyle(fontSize: 12),
              colorClickableText: Colors.blue,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Read more',
              trimExpandedText: 'Show less',
              moreStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.blue),
            ),
          ),

          //  Divider below About Me
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Divider(
              color: Colors.black,
              thickness: 0.5,
            ),
          ),

          //  28 Reviews
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              '28 Reviews :',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w900),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 50,
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
                  child: CircleAvatar(
                    // radius: 30,
                    backgroundImage: AssetImage('assets/user3.jpg'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ravina Kumari',
                          style: TextStyle(fontWeight: FontWeight.w900)),
                      Container(
                        child: Text(
                          '30 June 2021',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'Provides student with a deeper uderstanding of different functional areas and enable them to develop core competacy' +
                  'manner of teaching is so wonderful and refreshing!! She’s/He’s patient and supportive, but really knows how to motivate her/his students',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Divider(
              color: Colors.black,
              thickness: 0.5,
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 50,
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
                  child: CircleAvatar(
                    // radius: 30,
                    backgroundImage: AssetImage('assets/user3.jpg'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ravina Kumari',
                          style: TextStyle(fontWeight: FontWeight.w900)),
                      Container(
                        child: Text(
                          '30 June 2021',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'Provides student with a deeper uderstanding of different functional areas and enable them to develop core competacy' +
                  'manner of teaching is so wonderful and refreshing!! She’s/He’s patient and supportive, but really knows how to motivate her/his students',
              style: TextStyle(fontSize: 12),
            ),
          ),

          Container(
            width: 80,
            // padding: const EdgeInsets.all(10),
            margin: EdgeInsets.only(top: 20, left: 90, right: 90),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color(0xff909090),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 2.0,
                  spreadRadius: 2.0,
                ),
              ],
            ),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'Read 99+ More Reviews',
                  style: TextStyle(color: Colors.blue[900], fontSize: 12),
                )),
          ),

          Container(
            margin: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color(0xffDB0000),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 2.0,
                  spreadRadius: 2.0,
                ),
              ],
            ),
            child: TextButton(
                onPressed: () {
                  Get.toNamed('/booknow');
                },
                child: Text(
                  'Book Lesson',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )),
          ),
        ],
      ),
    );
  }
}
