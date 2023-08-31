import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:live_app/utils/utils_assets.dart';

class RoomProfileBottomSheet extends StatefulWidget {
  const RoomProfileBottomSheet({Key? key}) : super(key: key);

  @override
  State<RoomProfileBottomSheet> createState() => _RoomProfileBottomSheetState();
}

class _RoomProfileBottomSheetState extends State<RoomProfileBottomSheet> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double a = MediaQuery.of(context).size.width / baseWidth;
    double b = a * 0.97;
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 18 * a,
          ),
          SizedBox(
            width: 125 * a,
            height: 24 * a,
            child: Text(
              'Room Profile',
              style: SafeGoogleFont(
                'Poppins',
                fontSize: 16 * b,
                fontWeight: FontWeight.w400,
                height: 1.5 * b / a,
                letterSpacing: 0.64 * a,
                color: const Color(0xff000000),
              ),
            ),
          ),
          SizedBox(
            height: 18 * a,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 80 * a),
              Image.asset('assets/logo_greystyle.png',
                  height: 64 * a, width: 64 * a),
              SizedBox(width: 40 * a),
              GestureDetector(
                onTap: () {
                  Get.to(() => const RoomSettings());
                },
                child: Column(
                  children: [
                    Icon(Icons.settings,
                        color: const Color(0x99000000), size: 16 * a),
                    Text(
                      'Settings',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 9 * b,
                        fontWeight: FontWeight.w400,
                        height: 1.5 * b / a,
                        letterSpacing: 0.64 * a,
                        color: const Color(0x99000000),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 6 * a,
          ),
          Text(
            '981476',
            style: SafeGoogleFont(
              'Lato',
              fontSize: 12 * b,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 6 * a,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0 * a, 0 * a, 9 * a, 0 * a),
                        width: 14 * a,
                        height: 14 * a,
                        child: Image.asset(
                          'assets/room_icons/blue_diamond.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        '0',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 9 * b,
                          fontWeight: FontWeight.w400,
                          height: 1.5 * b / a,
                          letterSpacing: 0.36 * a,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Total Diamond',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 9 * b,
                      fontWeight: FontWeight.w400,
                      height: 1.5 * b / a,
                      letterSpacing: 0.36 * a,
                      color: const Color(0xff000000),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 19 * a),
              Container(
                margin: EdgeInsets.fromLTRB(0 * a, 0 * a, 26 * a, 1 * a),
                width: 1 * a,
                height: 32 * a,
                decoration: const BoxDecoration(
                  color: Color(0x66000000),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0 * a, 0 * a, 9 * a, 0 * a),
                        width: 14 * a,
                        height: 14 * a,
                        child: Image.asset(
                          'assets/room_icons/members.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        '0',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 9 * b,
                          fontWeight: FontWeight.w400,
                          height: 1.5 * b / a,
                          letterSpacing: 0.36 * a,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Members',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 9 * b,
                      fontWeight: FontWeight.w400,
                      height: 1.5 * b / a,
                      letterSpacing: 0.36 * a,
                      color: const Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 12 * a,
          ),
          Container(
            margin: EdgeInsets.only(left: 30 * a),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Language',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 9 * b,
                    fontWeight: FontWeight.w300,
                    height: 1.5 * b / a,
                    letterSpacing: 0.36 * a,
                    color: const Color(0xff000000),
                  ),
                ),
                SizedBox(
                  height: 3 * a,
                ),
                Text(
                  'English',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 12 * b,
                    fontWeight: FontWeight.w400,
                    height: 1.5 * b / a,
                    letterSpacing: 0.48 * a,
                    color: const Color(0xff000000),
                  ),
                ),
                SizedBox(
                  height: 12 * a,
                ),
                Text(
                  'Country',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 9 * b,
                    fontWeight: FontWeight.w300,
                    height: 1.5 * b / a,
                    letterSpacing: 0.36 * a,
                    color: const Color(0xff000000),
                  ),
                ),
                SizedBox(
                  height: 3 * a,
                ),
                Text(
                  'India',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 12 * b,
                    fontWeight: FontWeight.w400,
                    height: 1.5 * b / a,
                    letterSpacing: 0.48 * a,
                    color: const Color(0xff000000),
                  ),
                ),
                SizedBox(
                  height: 12 * a,
                ),
                Text(
                  'Announcement',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 9 * b,
                    fontWeight: FontWeight.w300,
                    height: 1.5 * b / a,
                    letterSpacing: 0.36 * a,
                    color: const Color(0xff000000),
                  ),
                ),
                SizedBox(
                  height: 3 * a,
                ),
                Text(
                  'Welcome to my room,let’s Chat together',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 12 * b,
                    fontWeight: FontWeight.w400,
                    height: 1.5 * b / a,
                    letterSpacing: 0.48 * a,
                    color: const Color(0xff000000),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24 * a,
          ),
        ],
      ),
    );
  }
}

class RoomSettings extends StatefulWidget {
  const RoomSettings({super.key});

  @override
  State<RoomSettings> createState() => _RoomSettingsState();
}

class _RoomSettingsState extends State<RoomSettings> {
  late List<Map> settingsList = [
    {
      "title": "Profile",
    },
    {
      "title": "Room Name",
      "trailing": "id",
      'onTap': () {
        _showRoomNameBottomSheet((String newName) {
          setState(() {
            roomName = newName;
          });
        });
      },
    },
    {
      "title": "Announcement",
      "trailing": "view",
      'onTap': _showAnnouncementBottomSheet,
    },
    {
      "title": "Blocked list",
      "trailing": "view",
      'onTap': () {
        Get.to(() => const BlockedList());
      },
    },
    {
      "title": "Kick History",
      "trailing": "view",
      'onTap': () {
        Get.to(() => const KickHistory());
      },
    },
    {
      "title": "LIVE Record",
      "trailing": "view",
      'onTap': () {},
    },
  ];
  bool engMode = true;
  bool pushNotify = true;
  String roomName = '981475';

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double a = Get.width / baseWidth;
    double b = a * 0.97;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color(0x339E26BC),
        automaticallyImplyLeading: true,
        centerTitle: true,
        elevation: 1,
        title: Text('Settings',
            textAlign: TextAlign.center,
            style: SafeGoogleFont(
              'Poppins',
              fontSize: 20 * b,
              fontWeight: FontWeight.w400,
              height: 1.5 * b / a,
              letterSpacing: 0.8 * a,
              color: const Color(0xff000000),
            )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 34 * a, vertical: 14 * a),
        child: ListView(
          children: [
            for (Map m in settingsList)
              InkWell(
                onTap: m['onTap'],
                child: Container(
                  margin: EdgeInsets.only(bottom: 12 * a),
                  height: 21 * a,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        m['title'],
                        textAlign: TextAlign.left,
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 14 * b,
                          fontWeight: FontWeight.w400,
                          height: 1.5 * b / a,
                          letterSpacing: 0.48 * a,
                          color: const Color(0xff000000),
                        ),
                      ),
                      const Spacer(),
                      if (m['trailing'] == 'view')
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 14 * a,
                        ),
                      if (m['trailing'] == 'id')
                        Text(
                          roomName,
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 12 * b,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * b / a,
                            letterSpacing: 0.36 * a,
                            color: const Color(0x99000000),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            SizedBox(height: 36 * a),
          ],
        ),
      ),
    );
  }

  void _showRoomNameBottomSheet(Function(String) update) {
    var t;
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isScrollControlled: false,
        enableDrag: true,
        isDismissible: true,
        context: context,
        elevation: 0,
        builder: (context) {
          double baseWidth = 290;
          double a = Get.width / baseWidth;
          double b = a * 0.97;
          return Scaffold(
            backgroundColor: Colors.transparent,
            body: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: Get.width,
                color: Colors.white,
                padding: EdgeInsets.all(12 * a),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Edit Room Name',
                      style: TextStyle(
                        fontSize: 12 * a,
                      ),
                    ),
                    SizedBox(height: 12 * a),
                    TextField(
                      maxLength: 30,
                      onChanged: (value) {
                        setState(() {
                          t = value;
                        });
                      },
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFD9D9D9),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: const Center(child: Text('Cancel')))),
                        Container(
                            color: Colors.black, width: 1, height: 18 * a),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            update(t);
                            Get.back();
                          },
                          child: const Center(
                              child: Text(
                            'Submit',
                            style: TextStyle(color: Color(0xFF9E26BC)),
                          )),
                        )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  void _showAnnouncementBottomSheet() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isScrollControlled: false,
        enableDrag: true,
        isDismissible: true,
        context: context,
        elevation: 0,
        builder: (context) {
          double baseWidth = 290;
          double a = Get.width / baseWidth;
          double b = a * 0.97;
          return Scaffold(
            backgroundColor: Colors.transparent,
            body: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: Get.width,
                color: Colors.white,
                padding: EdgeInsets.all(12 * a),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Edit Announcement',
                      style: TextStyle(
                        fontSize: 12 * a,
                      ),
                    ),
                    SizedBox(height: 12 * a),
                    const TextField(
                      maxLength: 150,
                      maxLines: 2,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFD9D9D9),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: const Center(child: Text('Cancel')))),
                        Container(
                            color: Colors.black, width: 1, height: 18 * a),
                        const Expanded(
                            child: Center(
                                child: Text(
                          'Submit',
                          style: TextStyle(color: Color(0xFF9E26BC)),
                        ))),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

class BlockedList extends StatelessWidget {
  const BlockedList({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double a = Get.width / baseWidth;
    double b = a * 0.97;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color(0x339E26BC),
        automaticallyImplyLeading: true,
        centerTitle: true,
        elevation: 1,
        title: Text('Blocked List',
            textAlign: TextAlign.center,
            style: SafeGoogleFont(
              'Poppins',
              fontSize: 20 * b,
              fontWeight: FontWeight.w400,
              height: 1.5 * b / a,
              letterSpacing: 0.8 * a,
              color: const Color(0xff000000),
            )),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 18 * a, vertical: 8 * a),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50 * a,
            ),
            Image.asset(
              "assets/icons/ic_empty.png",
              width: Get.width / 3,
              height: Get.width / 3,
            ),
            Text(
              'No Data!',
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
      ),
    );
  }
}

class KickHistory extends StatelessWidget {
  const KickHistory({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double a = Get.width / baseWidth;
    double b = a * 0.97;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color(0x339E26BC),
        automaticallyImplyLeading: true,
        centerTitle: true,
        elevation: 1,
        title: Text('Kick History',
            textAlign: TextAlign.center,
            style: SafeGoogleFont(
              'Poppins',
              fontSize: 20 * b,
              fontWeight: FontWeight.w400,
              height: 1.5 * b / a,
              letterSpacing: 0.8 * a,
              color: const Color(0xff000000),
            )),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 18 * a, vertical: 8 * a),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50 * a,
            ),
            Image.asset(
              "assets/icons/ic_empty.png",
              width: Get.width / 3,
              height: Get.width / 3,
            ),
            Text(
              'No Data!',
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
      ),
    );
  }
}
