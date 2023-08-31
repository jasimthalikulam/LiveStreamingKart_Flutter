import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:live_app/utils/utils_assets.dart';

class Moments extends StatefulWidget {
  const Moments({Key? key}) : super(key: key);

  @override
  State<Moments> createState() => _MomentsState();
}

class _MomentsState extends State<Moments> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double a = Get.width / baseWidth;
    double b = a * 0.97;
    final List<Map> posts = [
      {
        "dp": "assets/dummy/b1.png",
        "name": "Ariful islam",
        "time": "3 days ago",
        "post": "assets/dummy/b2.png",
        "likes": "24",
        "comments": "16",
      },
      {
        "dp": "assets/dummy/g1.png",
        "name": "Liza",
        "time": "2 days ago",
        "post": "assets/dummy/g2.png",
        "likes": "15",
        "comments": "6",
      },
      {
        "dp": "assets/dummy/b1.png",
        "name": "Ariful islam",
        "time": "4 days ago",
        "post": "assets/dummy/b1.png",
        "likes": "12",
        "comments": "4",
      },
      {
        "dp": "assets/dummy/g1.png",
        "name": "Liza",
        "time": "5 days ago",
        "post": "assets/dummy/g1.png",
        "likes": "18",
        "comments": "9",
      }
    ];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: const Color(0x339E26BC),
          automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 1,
          title: TabBar(
            indicatorColor: Colors.black,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 6 * a),
            indicatorWeight: 1.3,
            dividerColor: Colors.transparent,
            labelColor: const Color(0xff000000),
            unselectedLabelColor: const Color(0x99000000),
            labelStyle: SafeGoogleFont(
              'Poppins',
              fontSize: 18 * b,
              fontWeight: FontWeight.w400,
              height: 1.5 * b / a,
              letterSpacing: 0.96 * a,
              color: const Color(0xff000000),
            ),
            unselectedLabelStyle: SafeGoogleFont(
              'Poppins',
              fontSize: 18 * b,
              fontWeight: FontWeight.w400,
              height: 1.5 * b / a,
              letterSpacing: 0.96 * a,
              color: const Color(0x99000000),
            ),
            padding: EdgeInsets.symmetric(horizontal: 36 * a),
            labelPadding: EdgeInsets.zero,
            tabs: const [
              Tab(
                text: "Following",
              ),
              Tab(
                text: "Featured",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: Get.width / 4,
                ),
                Image.asset(
                  "assets/icons/ic_empty.png",
                  width: Get.width / 2,
                  height: Get.width / 2,
                ),
                Text(
                  'No Posts yet',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 16 * b,
                    fontWeight: FontWeight.w400,
                    height: 1.5 * b / a,
                    letterSpacing: 0.64 * a,
                    color: const Color(0xff000000),
                  ),
                ),
              ],
            ),
            ListView(
              children: List.generate(posts.length ?? 0, (index) {
                return Container(
                  padding: EdgeInsets.only(
                      left: 21 * a, right: 21 * a, top: 12 * a, bottom: 12 * a),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: ListTile(
                            dense: true,
                            contentPadding: EdgeInsets.zero,
                            leading: CircleAvatar(
                              foregroundImage: AssetImage(posts[index]['dp']),
                              radius: 22 * a,
                            ),
                            title: Text(
                              posts[index]['name'],
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 18 * b,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * b / a,
                                letterSpacing: 0.8 * a,
                                color: const Color(0xff000000),
                              ),
                            ),
                            subtitle: Text(posts[index]['time'],
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 16 * b,
                                  fontWeight: FontWeight.w300,
                                  height: 1.5 * b / a,
                                  letterSpacing: 0.8 * a,
                                  color: const Color(0x99000000),
                                )),
                          )),
                          Container(
                            height: 17 * a,
                            margin: EdgeInsets.symmetric(
                                horizontal: 7 * a, vertical: 15 * a),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * a, 0 * a, 6 * a, 0 * a),
                                  width: 48 * a,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff9e26bc),
                                    borderRadius: BorderRadius.circular(9 * a),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Follow',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 10 * b,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5 * b / a,
                                        letterSpacing: 0.4 * a,
                                        color: const Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                                Image.asset(
                                  'assets/icons/ic_three_dots.png',
                                  width: 28 * a,
                                  height: 8 * a,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset(posts[index]['post'],
                              width: 160 * a,
                              height: 160 * a,
                              fit: BoxFit.cover),
                          Container(
                            height: 18 * a,
                            margin: EdgeInsets.symmetric(
                                horizontal: 7 * a, vertical: 3 * a),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/icons/ic_post_like.png',
                                      width: 12 * a,
                                      height: 12 * a,
                                    ),
                                    SizedBox(width: 5 * a),
                                    Text(
                                      posts[index]['likes'],
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 12 * b,
                                        fontWeight: FontWeight.w300,
                                        height: 1.5 * b / a,
                                        letterSpacing: 0.48 * a,
                                        color: const Color(0x99000000),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 7 * a),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/icons/ic_post_message.png',
                                      width: 12 * a,
                                      height: 12 * a,
                                    ),
                                    SizedBox(width: 5 * a),
                                    Text(
                                      posts[index]['comments'],
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 12 * b,
                                        fontWeight: FontWeight.w300,
                                        height: 1.5 * b / a,
                                        letterSpacing: 0.48 * a,
                                        color: const Color(0x99000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
