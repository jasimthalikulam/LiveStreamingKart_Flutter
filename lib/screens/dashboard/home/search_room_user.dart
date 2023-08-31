import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:live_app/utils/utils_assets.dart';

class SearchRoomUser extends StatefulWidget {
  const SearchRoomUser({Key? key}) : super(key: key);

  @override
  State<SearchRoomUser> createState() => _SearchRoomUserState();
}

class _SearchRoomUserState extends State<SearchRoomUser> {
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
          title: Container(
            height: 40,
            margin: EdgeInsets.only(bottom: 5 * a, right: 18 * a),
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(50 * a),
            ),
            child: TextFormField(
              style: SafeGoogleFont(
                'Poppins',
                fontSize: 15 * b,
                fontWeight: FontWeight.w300,
                letterSpacing: 0.6 * a,
                color: const Color(0x99000000),
              ),
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                  isDense: true,
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(50 * a),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(50 * a),
                  ),
                  hintText: 'Search Room',
                  alignLabelWithHint: false,
                  prefixIcon: Padding(
                    padding: EdgeInsets.fromLTRB(15 * a, 10 * a, 10 * a, 8 * a),
                    child: Image.asset(
                      "assets/icons/ic_search.png",
                      fit: BoxFit.contain,
                    ),
                  )),
            ),
          ),
        ),
        body: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              TabBar(
                indicatorColor: Colors.black,
                indicatorWeight: 1.3,
                labelColor: const Color(0xff000000),
                dividerColor: Colors.transparent,
                unselectedLabelColor: const Color(0x99000000),
                labelStyle: SafeGoogleFont(
                  'Poppins',
                  fontSize: 16 * b,
                  fontWeight: FontWeight.w400,
                  height: 1.5 * b / a,
                  letterSpacing: 0.96 * a,
                  color: const Color(0xff000000),
                ),
                unselectedLabelStyle: SafeGoogleFont(
                  'Poppins',
                  fontSize: 16 * b,
                  fontWeight: FontWeight.w400,
                  height: 1.5 * b / a,
                  letterSpacing: 0.96 * a,
                  color: const Color(0x99000000),
                ),
                padding: EdgeInsets.symmetric(horizontal: 30 * a),
                labelPadding: EdgeInsets.zero,
                tabs: const [
                  Tab(
                    text: "Room",
                  ),
                  Tab(
                    text: "User",
                  )
                ],
              ),
              Expanded(
                child: TabBarView(children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 18 * a, vertical: 8 * a),
                    child: const Column(
                      children: [],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 18 * a, vertical: 8 * a),
                    child: const Column(
                      children: [],
                    ),
                  ),
                ]),
              )
            ],
          ),
        ));
  }
}
