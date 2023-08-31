import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_app/screens/dashboard/message/activity.dart';
import 'package:live_app/screens/dashboard/message/system_notification.dart';
import 'package:live_app/screens/dashboard/message/usefuns_club_notifications.dart';

import 'package:live_app/screens/rooms/emoji_bottomsheet.dart';
import 'package:live_app/shruti/aristrocracy/tab_bar.dart';
import 'package:live_app/shruti/mess/usefuns_teams.dart';
import 'package:live_app/shruti/playing_song/playlist.dart';
import 'package:live_app/shruti/scree/live_record.dart';
import 'package:live_app/shruti/scree/theme.dart';
import 'package:live_app/shruti/shop/shop.dart';
import 'package:live_app/shruti/tasks/dailyTask.dart';
import 'package:live_app/utils/utils_assets.dart';

import 'active_bottomsheet.dart';
import 'contribution_bottomsheet.dart';
import 'income_expense_tabs.dart';
import 'invite_user_bottomsheet.dart';
import 'room_profile_bottomsheet.dart';
import 'send_gifts_bottomsheet.dart';
import 'treasures_bottomsheet.dart';

class RoomSVIP5 extends StatefulWidget {
  const RoomSVIP5({Key? key}) : super(key: key);

  @override
  State<RoomSVIP5> createState() => _RoomSVIP5State();
}

bool isPressed = true;
String neImg = 'assets/plus.png';
String currentImag = 'assets/plus.png';

class _RoomSVIP5State extends State<RoomSVIP5> {
  bool isone = true;
  bool ison = true;
  bool isLocked = true;
  bool isPressed = true;

  void changeImage() {
    setState(() {
      // Update the image path variable to the desired image path
      currentImag = neImg;
    });
  }

  final List<Map> notifications = [
    {
      "title": "System",
      "message":
          "Please Complete Your Profile, So that Other People Can Know You better, and You can get more followers",
      "color": 0xFFFF9933,
      "icon": Icons.notifications_none,
      "onTap": () {
        Get.to(() => System());
      },
    },
    {
      "title": "Usefuns Club",
      "message": "",
      "color": 0xff14ae80,
      "icon": Icons.people_alt_outlined,
      "onTap": () {
        Get.to(() => const UsefunsClubNotification());
      },
    },
    {
      "title": "Activity",
      "message": "Every Single gift has a rank, a greater chance",
      "color": 0xFFEE3074,
      "icon": Icons.outlined_flag,
      "onTap": () {
        Get.to(() => Activity());
      },
    },
    {
      "title": "Usefuns team",
      "message": "",
      "color": 0xff14ae80,
      "icon": Icons.headset_mic_outlined,
      "onTap": () {
        Get.to(() => const UsefunsTeam());
      },
    },
  ];
  final List<Map> gamesList = [
    {
      "image": 'assets/jackpot.gif',
      "name": "JackPot",
      "rank": "516",
    },
    {
      "image": 'assets/ludo.gif',
      "name": "Ludo",
      "rank": "412",
    },
    {
      "image": 'assets/777.png',
      "name": "777 game",
      "rank": "510",
    },
    {
      "image": 'assets/wheel.gif',
      "name": "Wheel",
      "rank": "524",
    },
    {
      "image": 'assets/dias.png',
      "name": "Ludo Dias",
      "rank": "440",
    },
    {
      "image": 'assets/star.gif',
      "name": "Calculator",
      "rank": "440",
    },
  ];
  final List<Map> rooms = [
    {'locked': false, 'name': 'Ariful islam', 'image': 'assets/dummy/b1.png'},
    {'locked': false, 'name': 'Liza', 'image': 'assets/dummy/g4.png'},
    {'locked': true},
    {'locked': true},
    {'locked': true},
    {'locked': true},
    {'locked': false, 'name': 'Rahul', 'image': 'assets/dummy/b2.png'},
    {'locked': true},
  ];
  final List<Map> roomList = [
    {
      "image": "assets/dummy/g1.png",
      "name": "DREAM GIRLS",
      "about": "Sabhi New Users Ka swagat",
      "rank": "16",
    },
    {
      "image": "assets/dummy/g2.png",
      "name": "Girl Friend.Com",
      "about": "Sabhi New Users Ka swagat",
      "rank": "12",
    },
    {
      "image": "assets/dummy/g3.png",
      "name": "FRIENDSHIP CLUB",
      "about": "Sabhi New Users Ka swagat",
      "rank": "10",
    },
    {
      "image": "assets/dummy/g4.png",
      "name": "Gf Bf Dating Eoom",
      "about": "Sabhi New Users Ka swagat",
      "rank": "24",
    },
    {
      "image": "assets/dummy/g5.png",
      "name": "Nisha Hosting....",
      "about": "Sabhi New Users Ka swagat",
      "rank": "40",
    },
  ];
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double a = Get.width / baseWidth;
    double b = a * 0.97;
    return Scaffold(
      backgroundColor: const Color(0xFF26436b),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/bg.png'), fit: BoxFit.cover)),
          padding: EdgeInsets.fromLTRB(0 * a, 15 * a, 0 * a, 24 * a),
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(6 * a, 0 * a, 21 * a, 20 * a),
                      height: 38 * a,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: _showRoomProfileBottomSheet,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  13 * a, 23 * a, 1 * a, 1 * a),
                              height: double.infinity,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/room_icons/ic_room_dp.png',
                                  ),
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: SizedBox(
                                  width: 24 * a,
                                  height: 14 * a,
                                  child: Image.asset(
                                    'assets/room_icons/lock.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  4 * a, 4 * a, 0 * a, 2 * a),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0 * a, 0 * a, 0 * a, 2 * a),
                                        child: Text(
                                          '981476',
                                          style: SafeGoogleFont(
                                            'Lato',
                                            fontSize: 14 * b,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2000000817 * b / a,
                                            color: const Color(0xfffdf9f9),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'ID 58948762',
                                        style: SafeGoogleFont(
                                          'Lato',
                                          fontSize: 9 * b,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2 * b / a,
                                          color: const Color(0x99fcf3f3),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TextButton(
                                    onPressed: _showActiveBottomSheet,
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Container(
                                      constraints: BoxConstraints(
                                        maxWidth: 36 * a,
                                      ),
                                      child: Text(
                                        'Online\n   18',
                                        style: SafeGoogleFont(
                                          'Lato',
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2000000477,
                                          color: const Color(0x99ffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0 * a, 0 * a, 9 * a, 6 * a),
                                        width: 18 * a,
                                        height: 18 * a,
                                        child: InkWell(
                                          onTap: _showShareBottomSheet,
                                          child: Image.asset(
                                            'assets/room_icons/ic_share.png',
                                            color: Colors.white,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0 * a, 0 * a, 9 * a, 6 * a),
                                        child: InkWell(
                                          onTap: _showMore1BottomSheet,
                                          child: Icon(Icons.more_horiz_outlined,
                                              color: Colors.white,
                                              size: 24 * a),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0 * a, 0 * a, 0 * a, 6 * a),
                                        child: IconButton(
                                          icon: Icon(
                                              Icons.power_settings_new_rounded,
                                              color: Colors.white,
                                              size: 21 * a),
                                          onPressed: () {
                                            showDialog(
                                                context: context,
                                                builder: (BuilderContext) {
                                                  return AlertDialog(
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    content: Container(
                                                      color: Colors.transparent,
                                                      height: 350,
                                                      width: 5,
                                                      child: Column(
                                                        children: [
                                                          SizedBox(
                                                              height: 5 * a),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          55),
                                                              color:
                                                                  Colors.amber,
                                                            ),
                                                            child: IconButton(
                                                              onPressed: () {},
                                                              icon: Icon(
                                                                  Icons
                                                                      .arrow_upward_rounded,
                                                                  size: 70 * a),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                              height: 120 * a),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          55),
                                                              color:
                                                                  Colors.amber,
                                                            ),
                                                            child: IconButton(
                                                              onPressed: () {},
                                                              icon: Icon(
                                                                  Icons
                                                                      .power_settings_new_sharp,
                                                                  size: 70 * a),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                });
                                          },
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.fromLTRB(30 * a, 0 * a, 30 * a, 30 * a),
                      width: double.infinity,
                      height: 25 * a,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin:
                                EdgeInsets.fromLTRB(0 * a, 8 * a, 0 * a, 3 * a),
                            width: 60 * a,
                            height: double.infinity,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 0 * a, horizontal: 6 * a),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9 * a),
                                color: const Color(0xff9e26bc),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    'assets/room_icons/ic_heart_arrow.png',
                                    fit: BoxFit.cover,
                                    width: 9 * a,
                                    height: 9 * a,
                                  ),
                                  SizedBox(width: 1 * a),
                                  Text(
                                    'Group 1',
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 9 * b,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5 * b / a,
                                      letterSpacing: 0.36 * a,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => const LiveRecord());
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * a, 8 * a, 0 * a, 0 * a),
                              width: 80 * a,
                              height: double.infinity,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 0 * a, horizontal: 6 * a),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9 * a),
                                  color: const Color(0xff9e26bc),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset(
                                      'assets/room_icons/pink_diamond.png',
                                      fit: BoxFit.cover,
                                      width: 9 * a,
                                      height: 9 * a,
                                    ),
                                    SizedBox(width: 1 * a),
                                    Text(
                                      'RoomBonus',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 9 * b,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5 * b / a,
                                        letterSpacing: 0.36 * a,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(
                                12 * a, 4 * a, 9 * a, 4 * a),
                            decoration: BoxDecoration(
                              color: const Color(0x33000000),
                              borderRadius: BorderRadius.circular(12 * a),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InkWell(
                                  onTap: _showContributionBottomSheet,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * a, 0 * a, 12 * a, 0 * a),
                                    width: 21 * a,
                                    height: 21 * a,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(9 * a),
                                      image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/dummy/b1.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: _showContributionBottomSheet,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * a, 0 * a, 12 * a, 0 * a),
                                    width: 21 * a,
                                    height: 21 * a,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(9 * a),
                                      image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/dummy/b2.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: _showContributionBottomSheet,
                                  child: Container(
                                    width: 21 * a,
                                    height: 21 * a,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(9 * a),
                                      image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/dummy/b3.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 3 * a,
                                ),
                                InkWell(
                                  onTap: _showContributionBottomSheet,
                                  child: Icon(
                                    Icons.chevron_right_rounded,
                                    color: Colors.white,
                                    size: 18 * a,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 170 * a,
                      width: 270 * a,
                      child: GridView.count(
                          crossAxisCount: 4,
                          childAspectRatio: 4 / 5,
                          children: List.generate(
                            rooms.length,
                            (i) => GestureDetector(
                              onTap: () {
                                if (rooms[i]['locked']) {
                                  _showClickLockedBottomSheet();
                                } else {
                                  if (i == 1) {
                                    _showMemberProfileBottomSheet1(
                                        rooms[1]['name'], rooms[1]['image']);
                                  } else if (i == 0) {
                                    _showMemberProfileBottomSheet2(
                                        rooms[0]['name'], rooms[0]['image']);
                                  } else {
                                    _showMemberProfileBottomSheet(
                                        rooms[i]['name'], rooms[i]['image']);
                                  }
                                }
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: 50 * a,
                                    height: 50 * a,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            rooms[i]['image'] ??
                                                (isPressed
                                                    ? currentImag
                                                    : neImg),
                                          ),
                                          scale: 3,
                                          alignment: Alignment.center,
                                        ),
                                        shape: BoxShape.circle),
                                  ),
                                  SizedBox(height: 5 * a),
                                  SizedBox(
                                    width: 60 * a,
                                    child: Text(
                                      rooms[i]['name'] ?? '',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 10 * b,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5 * b / a,
                                        letterSpacing: 0.4 * a,
                                        color: const Color(0xffffffff),
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              insetPadding: EdgeInsets.only(
                                  bottom: 60, left: 10, right: 10),
                              backgroundColor: const Color(0x669e26bc),
                              shape: ShapeBorder.lerp(
                                  InputBorder.none, InputBorder.none, 0),
                              content: Container(
                                width: 400 * a,
                                padding: EdgeInsets.only(bottom: 70 * a),
                                child: Container(
                                  height: 48 * a,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 8 * a),
                                            child: Icon(
                                                CupertinoIcons.question_circle,
                                                color: Colors.white,
                                                size: 12 * a),
                                          ),
                                          Text(
                                            'Rahul ',
                                            style: SafeGoogleFont(
                                              'Poppins',
                                              fontSize: 10 * b,
                                              fontWeight: FontWeight.w400,
                                              height: 1.5 * b / a,
                                              letterSpacing: 0.4 * a,
                                              color: const Color(0xffffffff),
                                            ),
                                          ),
                                          SizedBox(width: 20 * a),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Spacer(flex: 2),
                                          Container(
                                            width: 64 * a,
                                            height: 17 * a,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(9 * a),
                                              color: const Color(0xffffe500),
                                            ),
                                            child: Center(
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Icon(
                                                      CupertinoIcons.heart_fill,
                                                      size: 12 * a),
                                                  Text(
                                                    ' Match',
                                                    style: SafeGoogleFont(
                                                      'Poppins',
                                                      fontSize: 9 * b,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.5 * b / a,
                                                      letterSpacing: 0.36 * a,
                                                      color: const Color(
                                                          0xff000000),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const Spacer(flex: 1),
                                          GestureDetector(
                                            onTap: () {
                                              _invitememberSheet();
                                            },
                                            child: Container(
                                              width: 64 * a,
                                              height: 17 * a,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        9 * a),
                                                color: const Color(0xffffe500),
                                              ),
                                              child: Center(
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Icon(Icons.person_add,
                                                        size: 12 * a),
                                                    Text(
                                                      ' Invite',
                                                      style: SafeGoogleFont(
                                                        'Poppins',
                                                        fontSize: 9 * b,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 1.5 * b / a,
                                                        letterSpacing: 0.36 * a,
                                                        color: const Color(
                                                            0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Spacer(flex: 2),
                                        ],
                                      ),
                                      Text(
                                        'Participating in PK will Help to gather Your room Members',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 6 * b,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5 * b / a,
                                          letterSpacing: 0.24 * a,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        width: 70 * a,
                        height: 25 * a,
                        margin: EdgeInsets.only(top: 8 * a),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            'PK',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 20 * b,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * b / a,
                              letterSpacing: 0.48 * a,
                              color: Color.fromARGB(255, 225, 198, 159),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 210 * a,
                          height: 210 * a,
                          child: ListView(
                            children: List.generate(
                              4,
                              (index) => Container(
                                margin: EdgeInsets.only(bottom: 6 * a),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        showModalBottomSheet(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Container();
                                            });
                                      },
                                      child: Container(
                                        padding: EdgeInsets.fromLTRB(
                                            11 * a, 2 * a, 21 * a, 2 * a),
                                        height: 60 * a,
                                        decoration: const BoxDecoration(
                                          color: Color(0x66090000),
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CircleAvatar(
                                              foregroundImage: const AssetImage(
                                                'assets/dummy/g3.png',
                                              ),
                                              radius: 15 * a,
                                            ),
                                            SizedBox(width: 3 * a),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * a, 11 * a, 6 * a, 0 * a),
                                              width: 26 * a,
                                              height: 12 * a,
                                              decoration: BoxDecoration(
                                                color: const Color(0xff9e26bc),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        9 * a),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Owner',
                                                  style: SafeGoogleFont(
                                                    'Poppins',
                                                    fontSize: 6 * b,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.5 * b / a,
                                                    letterSpacing: 0.24 * a,
                                                    color:
                                                        const Color(0xffffffff),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * a, 5 * a, 0 * a, 4 * a),
                                              width: 105 * a,
                                              height: 70 * a,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'FRIENDSHIP CLUB',
                                                    style: SafeGoogleFont(
                                                      'Poppins',
                                                      fontSize: 12 * b,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.5 * b / a,
                                                      letterSpacing: 0.48 * a,
                                                      color: const Color(
                                                          0xffffffff),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 45 * a,
                                                    height: 10 * a,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              9 * a),
                                                      color: const Color(
                                                          0xff4285f4),
                                                    ),
                                                    child: Center(
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Image.asset(
                                                            'assets/room_icons/blue_diamond.png',
                                                            fit: BoxFit.cover,
                                                            width: 8 * a,
                                                            height: 8 * a,
                                                          ),
                                                          SizedBox(
                                                              width: 5 * a),
                                                          Text(
                                                            'lv.5',
                                                            style:
                                                                SafeGoogleFont(
                                                              'Poppins',
                                                              fontSize: 8 * b,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height:
                                                                  1.5 * b / a,
                                                              letterSpacing:
                                                                  0.32 * a,
                                                              color: const Color(
                                                                  0xffffffff),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 32 * a,
                                                    height: 15 * a,
                                                    child: Text(
                                                      'Hello',
                                                      style: SafeGoogleFont(
                                                        'Poppins',
                                                        fontSize: 12 * b,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 1.5 * b / a,
                                                        letterSpacing: 0.48 * a,
                                                        color: const Color(
                                                            0xffffffff),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 21 * a),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Image.asset(
                                'assets/room_icons/win_rewards.png',
                                fit: BoxFit.cover,
                                width: 47 * a,
                                height: 43 * a,
                              ),
                              SizedBox(height: 42 * a),
                              Image.asset(
                                'assets/room_icons/ic_cards.png',
                                fit: BoxFit.cover,
                                width: 28 * a,
                                height: 28 * a,
                              ),
                              SizedBox(height: 21 * a),
                              Image.asset(
                                'assets/room_icons/ic_rose.png',
                                fit: BoxFit.cover,
                                width: 28 * a,
                                height: 28 * a,
                              ),
                              SizedBox(height: 21 * a),
                              InkWell(
                                onTap: _showTreasuresBottomSheet,
                                child: Image.asset(
                                  'assets/room_icons/ic_treasure.png',
                                  width: 28 * a,
                                  height: 28 * a,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 21 * a),
                              InkWell(
                                onTap: _shownotifyBottomSheet,
                                child: Image.asset(
                                  'assets/room_icons/ic_messages.png',
                                  fit: BoxFit.cover,
                                  width: 28 * a,
                                  height: 28 * a,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(13 * a, 0 * a, 11 * a, 0 * a),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(
                          ison
                              ? Icons.volume_off_outlined
                              : Icons.volume_up_outlined,
                          color: Colors.white,
                          size: 28 * a),
                      onPressed: () {
                        setState(() {
                          ison = !ison;
                        });
                      },
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isone = !isone;
                        });
                      },
                      icon: Icon(
                          isone ? Icons.mic_off_rounded : Icons.mic_rounded,
                          color: Colors.white,
                          size: 28 * a),
                    ),
                    InkWell(
                      onTap: _showmessage,
                      child: Icon(Icons.messenger_outline_rounded,
                          color: Colors.white, size: 28 * a),
                    ),
                    InkWell(
                      onTap: _showEmojiBottomSheet,
                      child: Icon(CupertinoIcons.smiley,
                          color: Colors.white, size: 28 * a),
                    ),
                    InkWell(
                      onTap: _showSendGiftsBottomSheet,
                      child: SizedBox(
                        width: 28 * a,
                        height: 28 * a,
                        child: Image.asset(
                          'assets/room_icons/ic_gift.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: _showGamesBottomSheet,
                      child: SizedBox(
                        width: 28 * a,
                        height: 28 * a,
                        child: Image.asset(
                          'assets/room_icons/ic_game_c.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: _showMore2BottomSheet,
                      child: Icon(
                        CupertinoIcons.line_horizontal_3,
                        color: Colors.white,
                        size: 28 * a,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _shownotifyBottomSheet() {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: false,
      enableDrag: true,
      isDismissible: true,
      context: context,
      builder: (BuildContext context) {
        double baseWidth = 360;
        double a = Get.width / baseWidth;
        double b = a * 0.97;
        return Container(
          color: Colors.white,
          width: double.infinity,
          height: 300 * a,
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(height: 15 * a),
              Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      Container(
                          height: 33 * a,
                          width: 36 * a,
                          color: const Color(0xFF4285F4),
                          child: const Icon(Icons.comment_sharp,
                              color: Colors.white)),
                      SizedBox(height: 5 * a),
                      Text(
                        'Comments',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 15 * b,
                          fontWeight: FontWeight.w400,
                          height: 1.5 * b / a,
                          letterSpacing: 0.6 * a,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ],
                  )),
                  Expanded(
                      child: Column(
                    children: [
                      Container(
                          height: 33 * a,
                          width: 36 * a,
                          color: const Color(0xFFEE3074),
                          child: const Icon(Icons.thumb_up_off_alt,
                              color: Colors.white)),
                      SizedBox(height: 5 * a),
                      Text(
                        'Likes',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 15 * b,
                          fontWeight: FontWeight.w400,
                          height: 1.5 * b / a,
                          letterSpacing: 0.6 * a,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ],
                  )),
                  Expanded(
                      child: Column(
                    children: [
                      Container(
                          height: 33 * a,
                          width: 36 * a,
                          color: const Color(0xFF34A853),
                          child: const Icon(Icons.people_alt_outlined,
                              color: Colors.white)),
                      SizedBox(height: 5 * a),
                      Text(
                        'Followers',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 15 * b,
                          fontWeight: FontWeight.w400,
                          height: 1.5 * b / a,
                          letterSpacing: 0.6 * a,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ],
                  )),
                ],
              ),
              SizedBox(
                height: 20 * a,
              ),
              for (Map m in notifications)
                ListTile(
                  onTap: m['onTap'],
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    backgroundColor: Color(m['color']),
                    radius: 15 * a,
                    child: Icon(
                      m['icon'],
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    m['title'],
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 15 * b,
                      fontWeight: FontWeight.w400,
                      height: 1.5 * b / a,
                      letterSpacing: 0.6 * a,
                      color: const Color(0xff000000),
                    ),
                  ),
                  subtitle: Divider(
                    height: 17 * a,
                    color: Colors.transparent,
                  ),
                )
            ]),
          ),
        );
      },
    );
  }

  void _showmessage() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isScrollControlled: false,
        enableDrag: true,
        isDismissible: true,
        context: context,
        builder: (context) {
          double baseWidth = 360;
          double a = Get.width / baseWidth;
          double b = a * 0.97;
          return Container(
            color: Colors.white,
            width: double.infinity,
            height: 60 * a,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20 * a),
                  child: Container(
                    height: 40 * a,
                    width: 220 * a,
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(hintText: 'Type a message'),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.image_rounded,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 16 * a,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 29,
                        width: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                        child: InkWell(
                          onTap: () {
                            final snackBar = SnackBar(
                              content: const Text('Hi, I am a SnackBar!'),
                              backgroundColor: (Colors.black12),
                              action: SnackBarAction(
                                label: 'dismiss',
                                onPressed: () {},
                              ),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                          child: InkWell(
                            onTap: () {},
                            child: Center(
                              child: Text(
                                'SEND',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10 * a,
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }

  void _showActiveBottomSheet() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isScrollControlled: false,
        enableDrag: true,
        isDismissible: true,
        context: context,
        builder: (context) {
          return const ViewActiveBottomSheet();
        });
  }

  void _showClickLockedBottomSheet() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isScrollControlled: false,
        enableDrag: true,
        isDismissible: true,
        context: context,
        builder: (context) {
          double baseWidth = 360;
          double a = Get.width / baseWidth;
          double b = a * 0.97;
          return Container(
            color: Colors.white,
            height: 80 * a,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0 * a),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(isLocked ? Icons.lock : Icons.lock_open,
                            color: Colors.black, size: 24 * a),
                        onPressed: () {
                          setState(() {
                            isLocked = !isLocked;
                          });
                        },
                      ),
                      Text(
                        isLocked ? 'Lock' : 'UnLock',
                        style: SafeGoogleFont('Poppins',
                            fontSize: 12 * b,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * b / a,
                            letterSpacing: 0.48 * a,
                            color: Colors.black),
                      )
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(isLocked ? Icons.lock : Icons.lock_open,
                            color: Colors.black, size: 24 * a),
                        onPressed: () {
                          setState(() {
                            isLocked = !isLocked;
                            isPressed = !isPressed;
                          });
                        },
                      ),
                      Text(
                        isLocked ? 'Lock All' : 'UnLock All',
                        style: SafeGoogleFont('Poppins',
                            fontSize: 12 * b,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * b / a,
                            letterSpacing: 0.48 * a,
                            color: Colors.black),
                      )
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.mic_external_on_rounded,
                            color: Colors.black, size: 24 * a),
                        onPressed: () {},
                      ),
                      Text(
                        'On mic',
                        style: SafeGoogleFont('Poppins',
                            fontSize: 12 * b,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * b / a,
                            letterSpacing: 0.48 * a,
                            color: Colors.black),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: _showInviteBottomSheet,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.person_add,
                            color: Colors.black, size: 24 * a),
                        Text(
                          'Invite',
                          style: SafeGoogleFont('Poppins',
                              fontSize: 12 * b,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * b / a,
                              letterSpacing: 0.48 * a,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  void _showMore1BottomSheet() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isScrollControlled: false,
        enableDrag: true,
        isDismissible: true,
        context: context,
        builder: (context) {
          double baseWidth = 360;
          double a = Get.width / baseWidth;
          double b = a * 0.97;
          return Container(
            color: Colors.white,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0 * a),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 18 * a),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.lock, color: Colors.black, size: 24 * a),
                      SizedBox(width: 12 * a),
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuilderContext) {
                                return AlertDialog(
                                  content: Container(
                                      color: Colors.white,
                                      height: 200 * a,
                                      width: 50 * a,
                                      child: Column(
                                        children: [
                                          Center(
                                            child: Text(
                                              'Room Lock',
                                              style: SafeGoogleFont('Poppins',
                                                  fontSize: 16 * b,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5 * b / a,
                                                  letterSpacing: 0.48 * a,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 18 * a,
                                                left: 10 * a,
                                                right: 10 * a),
                                            child: Center(
                                              child: Text(
                                                'You haven\'t purchased Room Lock \n           yet. Confirm to buy? ',
                                                style: SafeGoogleFont('Poppins',
                                                    fontSize: 10 * b,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.5 * b / a,
                                                    letterSpacing: 0.48 * a,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Get.to(() => const Shop());
                                            },
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: 18 * a,
                                                  left: 10 * a,
                                                  right: 10 * a),
                                              child: Container(
                                                  width: 136 * a,
                                                  height: 27 * a,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft: Radius.circular(
                                                          9 * a),
                                                      topRight: Radius.circular(
                                                          9 * a),
                                                      bottomLeft:
                                                          Radius.circular(
                                                              9 * a),
                                                      bottomRight:
                                                          Radius.circular(
                                                              9 * a),
                                                    ),
                                                    color: Color.fromRGBO(
                                                        255, 229, 0, 1),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'OK',
                                                      style: SafeGoogleFont(
                                                          'Poppins',
                                                          fontSize: 13 * a,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height: 1.5 * b / a,
                                                          letterSpacing:
                                                              0.48 * a,
                                                          color: Color.fromARGB(
                                                              255,
                                                              250,
                                                              249,
                                                              249)),
                                                    ),
                                                  )),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 18 * a,
                                                left: 10 * a,
                                                right: 10 * a),
                                            child: Text(
                                              'CANCEL',
                                              style: SafeGoogleFont('Poppins',
                                                  fontSize: 13 * a,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.5 * b / a,
                                                  letterSpacing: 0.48 * a,
                                                  color: Color.fromARGB(
                                                      255, 64, 63, 63)),
                                            ),
                                          ),
                                        ],
                                      )),
                                );
                              });
                        },
                        child: Text(
                          'Lock',
                          style: SafeGoogleFont('Poppins',
                              fontSize: 12 * b,
                              fontWeight: FontWeight.w500,
                              height: 1.5 * b / a,
                              letterSpacing: 0.48 * a,
                              color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  Divider(
                    color: const Color(0x66000000),
                    height: 20 * a,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => ThemePage());
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.color_lens_rounded,
                            color: Colors.black, size: 24 * a),
                        SizedBox(width: 12 * a),
                        Text(
                          'Theme',
                          style: SafeGoogleFont('Poppins',
                              fontSize: 12 * b,
                              fontWeight: FontWeight.w500,
                              height: 1.5 * b / a,
                              letterSpacing: 0.48 * a,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: const Color(0x66000000),
                    height: 20 * a,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                      _showShareBottomSheet();
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.share, color: Colors.black, size: 24 * a),
                        SizedBox(width: 12 * a),
                        Text(
                          'Share',
                          style: SafeGoogleFont('Poppins',
                              fontSize: 12 * b,
                              fontWeight: FontWeight.w500,
                              height: 1.5 * b / a,
                              letterSpacing: 0.48 * a,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: const Color(0x66000000),
                    height: 20 * a,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.people_alt, color: Colors.black, size: 24 * a),
                      SizedBox(width: 12 * a),
                      Text(
                        'Admin',
                        style: SafeGoogleFont('Poppins',
                            fontSize: 12 * b,
                            fontWeight: FontWeight.w500,
                            height: 1.5 * b / a,
                            letterSpacing: 0.48 * a,
                            color: Colors.black),
                      )
                    ],
                  ),
                  Divider(
                    color: const Color(0x66000000),
                    height: 20 * a,
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                          content:
                              const Text("Do you want to increase seats??"),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {},
                              child: Container(
                                padding: const EdgeInsets.all(14),
                                child: const Text("YES"),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.people_alt,
                            color: Colors.black, size: 24 * a),
                        SizedBox(width: 12 * a),
                        Text(
                          'Extra Seat',
                          style: SafeGoogleFont('Poppins',
                              fontSize: 12 * b,
                              fontWeight: FontWeight.w500,
                              height: 1.5 * b / a,
                              letterSpacing: 0.48 * a,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: const Color(0x66000000),
                    height: 20 * a,
                  ),
                  Text(
                    'Cancel',
                    style: SafeGoogleFont('Poppins',
                        fontSize: 12 * b,
                        fontWeight: FontWeight.w400,
                        height: 1.5 * b / a,
                        letterSpacing: 0.48 * a,
                        color: Colors.black),
                  ),
                  SizedBox(height: 18 * a),
                ],
              ),
            ),
          );
        });
  }

  void _showShareBottomSheet() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isScrollControlled: false,
        enableDrag: true,
        isDismissible: true,
        context: context,
        builder: (context) {
          double baseWidth = 360;
          double a = Get.width / baseWidth;
          double b = a * 0.97;
          return Container(
            color: Colors.white,
            height: 80 * a,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0 * a),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        foregroundImage:
                            const AssetImage('assets/icons/club.png'),
                        radius: 21 * a,
                      ),
                      Text(
                        'Use fun Friends',
                        style: SafeGoogleFont('Poppins',
                            fontSize: 12 * b,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * b / a,
                            letterSpacing: 0.48 * a,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(width: 18 * a),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        foregroundImage:
                            const AssetImage('assets/room_icons/ic_wa.png'),
                        radius: 21 * a,
                      ),
                      Text(
                        'Whatsapp',
                        style: SafeGoogleFont('Poppins',
                            fontSize: 12 * b,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * b / a,
                            letterSpacing: 0.48 * a,
                            color: Colors.black),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }

  void _showMore2BottomSheet() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isScrollControlled: false,
        enableDrag: true,
        isDismissible: true,
        context: context,
        builder: (context) {
          double baseWidth = 420;
          double a = Get.width / baseWidth;
          double b = a * 0.97;
          return Container(
            color: Colors.white,
            width: double.infinity,
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 19.0 * a, vertical: 15 * a),
              child: Wrap(
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  SizedBox(
                    width: 10 * a,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => const DailyTask());
                    },
                    child: iconTextRow(
                        a, b, 'Daily\nTasks', 'assets/room_icons/b1.png'),
                  ),
                  SizedBox(
                    width: 20 * a,
                  ),
                  InkWell(
                    onTap: _showIncomeExpenseBottomSheet,
                    child: iconTextRow(a, b, 'Income &\nExpenditure',
                        'assets/room_icons/b2.png'),
                  ),
                  SizedBox(
                    width: 20 * a,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => const Shop());
                    },
                    child: iconTextRow(a, b, 'Shop', 'assets/homeim.png'),
                  ),
                  SizedBox(
                    width: 20 * a,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => const TabsBar());
                    },
                    child: iconTextRow(
                        a, b, 'Aristocracy', 'assets/room_icons/b4.png'),
                  ),
                  SizedBox(
                    width: 10 * a,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => const Playlist1());
                    },
                    child: iconTextRow(a, b, 'Music', 'assets/musicc.png'),
                  ),
                ],
              ),
            ),
          );
        });
  }

  void _invitememberSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          double baseWidth = 400;
          double a = Get.width / baseWidth;
          double b = a * 0.97;
          return SizedBox(
            width: double.infinity,
            height: 700 * a,
            child: Column(
              children: [
                SizedBox(height: 10 * a),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.arrow_back_rounded),
                    Center(
                      child: Text(
                        'Invite PK                                  ',
                        textAlign: TextAlign.left,
                        style: SafeGoogleFont(
                            color: Color.fromRGBO(6, 6, 6, 1),
                            'Lato',
                            fontSize: 22 * a,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w700,
                            height: 1 * a),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(10 * a),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffd9d9d9),
                      borderRadius: BorderRadius.circular(20 * a),
                    ),
                    height: 40 * a,
                    child: const TextField(
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: '   Search Room',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30 * a),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    '   Recommended Rooms',
                    textAlign: TextAlign.left,
                    style: SafeGoogleFont(
                        color: Color.fromRGBO(6, 6, 6, 1),
                        'Lato',
                        fontSize: 20 * a,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.w700,
                        height: 1 * a),
                  ),
                ),
                Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 18 * a, vertical: 8 * a),
                    child: Column(
                      children: [
                        for (Map club in roomList.take(3))
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: ListTile(
                                      leading: Image.asset(
                                        club["image"],
                                        fit: BoxFit.contain,
                                        width: 64 * a,
                                        height: 64 * a,
                                      ),
                                      title: Text(
                                        club["name"],
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 16 * b,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5 * b / a,
                                          letterSpacing: 0.64 * a,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                      subtitle: Text(
                                        club["about"],
                                        overflow: TextOverflow.ellipsis,
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 12 * b,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5 * b / a,
                                          letterSpacing: 0.48 * a,
                                          color: const Color(0x99000000),
                                        ),
                                      ),
                                      trailing: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          height: 25 * a,
                                          width: 50 * a,
                                          decoration: BoxDecoration(
                                            color: Colors.orange,
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Invite',
                                              style: SafeGoogleFont(
                                                'Poppins',
                                                fontSize: 12 * b,
                                                fontWeight: FontWeight.w800,
                                                height: 1.5 * b / a,
                                                letterSpacing: 0.48 * a,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )),
                                ),
                              ]),
                      ],
                    )),
              ],
            ),
          );
        });
  }

  void _showMemberProfileBottomSheet(String name, String dp) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isScrollControlled: false,
        enableDrag: true,
        isDismissible: true,
        context: context,
        builder: (context) {
          double baseWidth = 300;
          double a = Get.width / baseWidth;
          double b = a * 0.97;
          return SizedBox(
            width: double.infinity,
            height: 600 * a,
            child: Stack(
              children: [
                Positioned(
                  top: 20 * a,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 700,
                    color: Colors.white,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 45 * a),
                        Text(
                          name,
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 17 * b,
                            fontWeight: FontWeight.w400,
                            height: 1 * b / a,
                            color: const Color(0xff000000),
                          ),
                        ),
                        SizedBox(height: 12 * a),
                        lv_member_admin(a, b),
                        SizedBox(height: 22 * a),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              ' Use funs Id - 58948762  ',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 10 * b,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * b / a,
                                color: const Color(0x99000000),
                              ),
                            ),
                            Image.asset('assets/people.png'),
                            Text(
                              ' 5 - Followers',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 10 * b,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * b / a,
                                color: const Color(0x99000000),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 18 * a),
                        Text(
                          'Make a good World without selfishness',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 12 * b,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * b / a,
                            color: const Color(0x99000000),
                          ),
                        ),
                        SizedBox(height: 38 * a),
                        Wrap(
                          alignment: WrapAlignment.start,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(children: [
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.person_3_rounded,
                                        color: Colors.blue,
                                      ),
                                      Text(
                                        'Profile',
                                        textAlign: TextAlign.left,
                                        style: SafeGoogleFont(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            'Poppins',
                                            fontSize: 12 * a,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 40 * a),
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.chair_rounded,
                                        color: Colors.yellow,
                                      ),
                                      Text(
                                        'Leave the seat',
                                        textAlign: TextAlign.left,
                                        style: SafeGoogleFont(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            'Poppins',
                                            fontSize: 12 * a,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      ),
                                    ],
                                  )
                                ]),
                              ],
                            ),
                            SizedBox(width: 10 * a),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -1,
                  left: Get.width / 2 - 25 * a,
                  child: CircleAvatar(
                    radius: 30 * a,
                    foregroundImage: AssetImage(dp),
                  ),
                ),
              ],
            ),
          );
        });
  }

  void _showMemberProfileBottomSheet1(String name, String dpp) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isScrollControlled: false,
        enableDrag: true,
        isDismissible: true,
        context: context,
        builder: (context) {
          double baseWidth = 400;
          double a = Get.width / baseWidth;
          double b = a * 0.97;
          return SizedBox(
            width: double.infinity,
            height: 800 * a,
            child: Stack(
              children: [
                Positioned(
                  top: 20 * a,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 30 * a),
                        Text(
                          name,
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 20 * b,
                            fontWeight: FontWeight.w400,
                            height: 1 * b / a,
                            color: const Color(0xff000000),
                          ),
                        ),
                        SizedBox(height: 12 * a),
                        lv_member_admin1(a, b),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              ' Use funs Id - 58948762  ',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 10 * b,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * b / a,
                                color: const Color(0x99000000),
                              ),
                            ),
                            Image.asset('assets/people.png'),
                            Text(
                              ' 0 - Followers',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 10 * b,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * b / a,
                                color: const Color(0x99000000),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 18 * a),
                        Wrap(
                          alignment: WrapAlignment.start,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 12 * a,
                                  backgroundColor: Colors.white,
                                  child: Image.asset(
                                    'assets/b2.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                SizedBox(height: 10 * a),
                                Text(
                                  'Profile',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont('Poppins',
                                      fontSize: 14 * b,
                                      fontWeight: FontWeight.w500,
                                      height: 1.5 * b / a,
                                      letterSpacing: 0.48 * a,
                                      color: Colors.black),
                                )
                              ],
                            ),
                            SizedBox(width: 30 * a),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 12 * a,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.chat,
                                    size: 21 * a,
                                  ),
                                ),
                                SizedBox(height: 10 * a),
                                Text(
                                  'Chat',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont('Poppins',
                                      fontSize: 14 * b,
                                      fontWeight: FontWeight.w500,
                                      height: 1.5 * b / a,
                                      letterSpacing: 0.48 * a,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            SizedBox(width: 30 * a),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 12 * a,
                                  backgroundColor: Colors.white,
                                  child: Image.asset('assets/@.png'),
                                ),
                                SizedBox(height: 10 * a),
                                Text(
                                  'Mention',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont('Poppins',
                                      fontSize: 14 * b,
                                      fontWeight: FontWeight.w500,
                                      height: 1.5 * b / a,
                                      letterSpacing: 0.48 * a,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20 * a),
                        Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.lock),
                                    onPressed: () {},
                                  ),
                                  Text('Lock'),
                                ],
                              ),
                              SizedBox(width: 60 * a),
                              Column(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.mic_off_sharp),
                                    onPressed: () {},
                                  ),
                                  Text('Mute'),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.chair),
                                    onPressed: () {},
                                  ),
                                  Text('Remove'),
                                ],
                              ),
                              SizedBox(width: 60 * a),
                              Column(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.person),
                                    onPressed: () {},
                                  ),
                                  Text('Invite'),
                                ],
                              ),
                            ],
                          )
                        ]),
                        SizedBox(height: 30 * a),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                width: 90 * a,
                                height: 26 * a,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(255, 153, 51, 1),
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12 * a),
                                    topRight: Radius.circular(12 * a),
                                    bottomLeft: Radius.circular(12 * a),
                                    bottomRight: Radius.circular(12 * a),
                                  ),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Text(
                                    'Follow',
                                    textAlign: TextAlign.left,
                                    style: SafeGoogleFont(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        'Poppins',
                                        fontSize: 12 * a,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  ),
                                )),
                            Container(
                                width: 90 * a,
                                height: 26 * a,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12 * a),
                                    topRight: Radius.circular(12 * a),
                                    bottomLeft: Radius.circular(12 * a),
                                    bottomRight: Radius.circular(12 * a),
                                  ),
                                  color: Color.fromRGBO(255, 153, 51, 1),
                                ),
                                child: Center(
                                  child: Text(
                                    'Send Gifts',
                                    textAlign: TextAlign.left,
                                    style: SafeGoogleFont(
                                        color: Color.fromRGBO(250, 248, 248, 1),
                                        'Poppins',
                                        fontSize: 12 * a,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  ),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -3 * a,
                  left: Get.width / 2 - 30 * a,
                  child: CircleAvatar(
                    radius: 40 * a,
                    foregroundImage: AssetImage(dpp),
                  ),
                ),
              ],
            ),
          );
        });
  }

  void _showMemberProfileBottomSheet2(String name, String dp) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isScrollControlled: false,
        enableDrag: true,
        isDismissible: true,
        context: context,
        builder: (context) {
          double baseWidth = 360;
          double a = Get.width / baseWidth;
          double b = a * 0.97;
          return Container(
            width: double.infinity,
            height: 800 * a,
            child: Stack(
              children: [
                Positioned(
                  top: 20 * a,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 1000 * a,
                    color: Colors.white,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 55 * a),
                          Text(
                            name,
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 20 * b,
                              fontWeight: FontWeight.w400,
                              height: 1 * b / a,
                              color: const Color(0xff000000),
                            ),
                          ),
                          SizedBox(height: 12 * a),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                ' Use funs Id - 58948762  ',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 14 * b,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * b / a,
                                  color: const Color(0x99000000),
                                ),
                              ),
                              Image.asset('assets/people.png'),
                              Text(
                                ' 10- Followers',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 14 * b,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * b / a,
                                  color: const Color(0x99000000),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 18 * a),
                          Wrap(
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 12 * a,
                                    backgroundColor: Colors.white,
                                    child: Image.asset(
                                      'assets/b2.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(height: 10 * a),
                                  Text(
                                    'Profile',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont('Poppins',
                                        fontSize: 14 * b,
                                        fontWeight: FontWeight.w500,
                                        height: 1.5 * b / a,
                                        letterSpacing: 0.48 * a,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                              SizedBox(width: 30 * a),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 12 * a,
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.chat,
                                      size: 21 * a,
                                    ),
                                  ),
                                  SizedBox(height: 10 * a),
                                  Text(
                                    'Chat',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont('Poppins',
                                        fontSize: 14 * b,
                                        fontWeight: FontWeight.w500,
                                        height: 1.5 * b / a,
                                        letterSpacing: 0.48 * a,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              SizedBox(width: 30 * a),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 12 * a,
                                    backgroundColor: Colors.white,
                                    child: Image.asset('assets/@.png'),
                                  ),
                                  SizedBox(height: 10 * a),
                                  Text(
                                    'Mention',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont('Poppins',
                                        fontSize: 14 * b,
                                        fontWeight: FontWeight.w500,
                                        height: 1.5 * b / a,
                                        letterSpacing: 0.48 * a,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 20 * a),
                          Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.mark_chat_read_outlined),
                                      onPressed: () {},
                                    ),
                                    Text('Ban Chat'),
                                  ],
                                ),
                                SizedBox(width: 60 * a),
                                Column(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.mic_off_sharp),
                                      onPressed: () {},
                                    ),
                                    Text('Mute'),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(width: 60 * a),
                            Column(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.person),
                                  onPressed: () {},
                                ),
                                Text('Invite'),
                              ],
                            )
                          ]),
                          SizedBox(height: 30 * a),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  width: 90 * a,
                                  height: 26 * a,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromRGBO(255, 153, 51, 1),
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12 * a),
                                      topRight: Radius.circular(12 * a),
                                      bottomLeft: Radius.circular(12 * a),
                                      bottomRight: Radius.circular(12 * a),
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Follow',
                                      textAlign: TextAlign.left,
                                      style: SafeGoogleFont(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          'Poppins',
                                          fontSize: 12 * a,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    ),
                                  )),
                              Container(
                                  width: 90 * a,
                                  height: 26 * a,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12 * a),
                                      topRight: Radius.circular(12 * a),
                                      bottomLeft: Radius.circular(12 * a),
                                      bottomRight: Radius.circular(12 * a),
                                    ),
                                    color: Color.fromRGBO(255, 153, 51, 1),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Send Gifts',
                                      textAlign: TextAlign.left,
                                      style: SafeGoogleFont(
                                          color:
                                              Color.fromRGBO(250, 248, 248, 1),
                                          'Poppins',
                                          fontSize: 12 * a,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: -3 * a,
                  left: Get.width / 2 - 40 * a,
                  child: CircleAvatar(
                    radius: 35 * a,
                    foregroundImage: AssetImage(dp),
                  ),
                ),
              ],
            ),
          );
        });
  }

  Container lv_member_admin(double a, double b) {
    return Container(
        width: 320 * a,
        height: 28 * a,
        child: Stack(children: <Widget>[
          Positioned(
            top: -15 * a,
            left: 20 * a,
            child: Container(
              width: 145 * a,
              height: 86 * a,
              child: Stack(children: <Widget>[
                Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                        width: 50 * a,
                        height: 55 * a,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/lv.png'),
                              fit: BoxFit.cover),
                        ))),
                // Positioned(
                //     top: 0 * a,
                //     left: 0 * a,
                //     child: Center(child: Image.asset('assets/owner.png'))),
              ]),
            ),
          ),
          Positioned(
              top: 5 * a,
              left: 180 * a,
              child: Container(
                  width: 63 * a,
                  height: 29 * a,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 2 * a,
                        left: 5 * a,
                        child: Container(
                            width: 49 * a,
                            height: 19 * a,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ))),
                    Positioned(
                        top: 3 * a,
                        left: 25.5 * a,
                        child: Center(
                          child: Text(
                            '28',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'Poppins',
                                fontSize: 11 * a,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1 * a),
                          ),
                        )),
                    Positioned(
                        top: 4 * a,
                        left: 14 * a,
                        child: Container(
                          width: 14 * a,
                          height: 14 * a,
                          child: Icon(
                            Icons.male,
                            size: 12 * a,
                          ),
                        )),
                  ]))),
          Positioned(
            top: -20 * a,
            left: 66 * a,
            child: Container(
              width: 145 * a,
              height: 86 * a,
              child: Stack(children: <Widget>[
                Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                        width: 70 * a,
                        height: 65 * a,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/member.png'),
                              fit: BoxFit.cover),
                        ))),
                // Positioned(
                //     top: 0 * a,
                //     left: 0 * a,
                //     child: Center(child: Image.asset('assets/owner.png'))),
              ]),
            ),
          ),
          Positioned(
            top: -20 * a,
            left: 127 * a,
            child: Container(
              width: 145 * a,
              height: 86 * a,
              child: Stack(children: <Widget>[
                Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                        width: 70 * a,
                        height: 65 * a,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/admin.png'),
                              fit: BoxFit.cover),
                        ))),
                // Positioned(
                //     top: 0 * a,
                //     left: 0 * a,
                //     child: Center(child: Image.asset('assets/owner.png'))),
              ]),
            ),
          ),
        ]));
  }

  Container lv_member_admin1(double a, double b) {
    return Container(
        alignment: Alignment.center,
        width: 240 * a,
        height: 60 * a,
        child: Stack(children: <Widget>[
          Positioned(
              top: 5 * a,
              left: 10,
              child: Container(
                  width: 89 * a,
                  height: 126 * a,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0 * a,
                        left: 0,
                        child: Container(
                            width: 79 * a,
                            height: 40 * a,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/lv.png'),
                                  fit: BoxFit.cover),
                            ))),
                    Positioned(
                        top: 12.2 * a,
                        left: 34 * a,
                        child: Center(
                          child: Text(
                            'Lv.1',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(251, 250, 250, 1),
                                fontFamily: 'Poppins',
                                fontSize: 13.33 * a,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 * b / a),
                          ),
                        )),
                  ]))),
          Positioned(
              top: 9 * a,
              left: 177 * a,
              child: Container(
                  width: 50 * a,
                  height: 30 * a,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 12 * a,
                        left: 20 * a,
                        child: Center(
                          child: Text(
                            '22',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'Poppins',
                                fontSize: 14 * a,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1 * a),
                          ),
                        )),
                    Positioned(
                        top: 7.5 * a,
                        left: 1 * a,
                        child: Container(
                          width: 12 * a,
                          height: 12 * a,
                          child: Icon(Icons.female),
                        )),
                  ]))),
          Positioned(
              top: -22 * a,
              left: 90 * a,
              child: Container(
                  width: 85 * a,
                  height: 90 * a,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 4 * a,
                        left: 0,
                        child: Container(
                            width: 85 * a,
                            height: 85 * a,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/owner.png'),
                                  fit: BoxFit.cover),
                            ))),
                    // Positioned(
                    //     top: 0 * a,
                    //     left: 0 * a,
                    //     child: Center(child: Image.asset('assets/owner.png'))),
                  ]))),
        ]));
  }

  void __showbotmBar() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isScrollControlled: false,
        enableDrag: true,
        isDismissible: true,
        context: context,
        builder: (context) {
          double baseWidth = 360;
          double a = Get.width / baseWidth;
          double b = a * 0.97;
          return Container(
              color: Colors.white,
              width: double.infinity,
              height: 90 * a,
              child: Column(children: [
                SizedBox(height: 10 * a),
                Text(
                  'Reset',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 16 * b,
                    fontWeight: FontWeight.w400,
                    height: 1 * b / a,
                    letterSpacing: 0.64 * a,
                    color: Color(0xff000000),
                  ),
                ),
                Divider(
                  height: 25 * a,
                ),
                Text(
                  '  Update',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 14 * b,
                    fontWeight: FontWeight.w400,
                    height: 1 * b / a,
                    letterSpacing: 0.64 * a,
                    color: Color(0xff000000),
                  ),
                ),
              ]));
        });
  }

  void _showGamesBottomSheet() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isScrollControlled: false,
        enableDrag: true,
        isDismissible: true,
        context: context,
        builder: (context) {
          double baseWidth = 360;
          double a = Get.width / baseWidth;
          double b = a * 0.97;
          return Container(
            color: Colors.white,
            width: double.infinity,
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 16.0 * a, vertical: 9 * a),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'PLAY WITH ANYONE',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 16 * b,
                        fontWeight: FontWeight.w400,
                        height: 1.5 * b / a,
                        letterSpacing: 0.64 * a,
                        color: const Color(0xff000000),
                      ),
                    ),
                    LayoutBuilder(
                      builder: (context, constraints) => GridView.count(
                        padding: EdgeInsets.all(22 * a),
                        shrinkWrap: true,
                        crossAxisCount: 3,
                        crossAxisSpacing: 18,
                        mainAxisSpacing: 18,
                        childAspectRatio: 3 / 4,
                        physics: const NeverScrollableScrollPhysics(),
                        children: List.generate(
                          gamesList.length,
                          (index) => InkWell(
                            onTap: () {
                              if (index == 5) {
                                __showbotmBar();
                              }
                              ;
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(width: 6 * a),
                                CircleAvatar(
                                    backgroundColor: Colors.green,
                                    radius: 20,
                                    foregroundImage:
                                        AssetImage(gamesList[index]["image"])),
                                SizedBox(width: 6 * a),
                                Text(
                                  gamesList[index]["name"],
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 14 * b,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5 * b / a,
                                    letterSpacing: 0.64 * a,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 12 * a,
                                      height: 12 * a,
                                      child: Image.asset(
                                        'assets/icons/ic_game.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(width: 9 * a),
                                    SizedBox(
                                      width: 21 * a,
                                      height: 18 * a,
                                      child: Text(
                                        gamesList[index]["rank"],
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 12 * b,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5 * b / a,
                                          letterSpacing: 0.48 * a,
                                          color: Color(0x99000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  void _showRoomProfileBottomSheet() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isScrollControlled: false,
        enableDrag: true,
        isDismissible: true,
        context: context,
        builder: (context) {
          return const RoomProfileBottomSheet();
        });
  }

  void _showIncomeExpenseBottomSheet() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isScrollControlled: false,
        enableDrag: true,
        isDismissible: true,
        context: context,
        builder: (context) {
          return const IncomeExpense();
        });
  }

  void _showSendGiftsBottomSheet() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isScrollControlled: false,
        enableDrag: true,
        isDismissible: true,
        context: context,
        builder: (context) {
          return const SendGifts();
        });
  }

  void _showContributionBottomSheet() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isScrollControlled: false,
        enableDrag: true,
        isDismissible: true,
        context: context,
        builder: (context) {
          return const Contribution();
        });
  }

  void _showEmojiBottomSheet() {
    showModalBottomSheet(
        backgroundColor: const Color(0x66000000),
        isScrollControlled: false,
        enableDrag: true,
        isDismissible: true,
        context: context,
        builder: (context) {
          return const Emoji();
        });
  }

  void _showTreasuresBottomSheet() {
    showModalBottomSheet(
        backgroundColor: const Color(0xFF9E26BC),
        shape: InputBorder.none,
        isScrollControlled: false,
        enableDrag: true,
        isDismissible: true,
        context: context,
        builder: (context) {
          return const Treasures();
        });
  }

  void _showInviteBottomSheet() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isScrollControlled: false,
        enableDrag: true,
        isDismissible: true,
        context: context,
        builder: (context) {
          return const InviteUserBottomSheet();
        });
  }

  iconTextRow(double a, double b, String t, String p) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10 * a, horizontal: 3 * a),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 70 * a,
            height: 60 * a,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(p),
              ),
            ),
          ),
          // CircleAvatar(
          //   foregroundImage: AssetImage(p),
          //   radius: 15 * a,
          // ),
          SizedBox(height: 6 * a),
          SizedBox(
            // width: 57 * a,
            child: Text(
              t,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: SafeGoogleFont('Poppins',
                  fontSize: 12 * b,
                  fontWeight: FontWeight.w400,
                  height: 1 * b / a,
                  letterSpacing: 0.48 * a,
                  color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
