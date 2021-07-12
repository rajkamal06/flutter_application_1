import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';

class SearchView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
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
          language(),
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
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30, left: 10),
                  height: 80,
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
                    radius: 50,
                    backgroundImage: AssetImage('assets/user3.jpg'),
                  ),
                ),
                Container(
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
                      Text('HIndi Expert- 3 Year Experince'),
                      Text(
                        '120 Lessons Complete',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 10),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: RatingBarIndicator(
                              rating: 4.5,
                              itemBuilder: (context, index) => Icon(
                                Icons.star,
                                color: Color(0xffDB0000),
                              ),
                              itemCount: 5,
                              itemSize: 15.0,
                              direction: Axis.horizontal,
                            ),
                          ),
                          Container(
                            child: Text('1800INR/H'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              'This Code Can be used in log in to your Telegran account. We never ask if for anything else',
              style: TextStyle(fontSize: 11),
            ),
          ),
        ],
      ),
    );
  }

  language() {
    return Container(
      height: 60,
      child: ListView(
        physics: ScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 120,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffDB0000),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
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
            width: 120,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffDB0000),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
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
            width: 120,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffDB0000),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
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
                )),
          ),
          Container(
            width: 120,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffDB0000),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5.0,
                  spreadRadius: 2.0,
                ),
              ],
            ),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'Marathi',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
          ),
          Container(
            width: 120,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffDB0000),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5.0,
                  spreadRadius: 2.0,
                ),
              ],
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Gujarati',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
