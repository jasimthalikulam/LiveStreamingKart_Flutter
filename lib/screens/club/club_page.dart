import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/utils_assets.dart';

class ClubPage extends StatefulWidget {
  const ClubPage({super.key});

  @override
  State<ClubPage> createState() => _ClubPageState();
}

class _ClubPageState extends State<ClubPage> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double a = Get.width / baseWidth;
    double b = a * 0.97;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0x339E26BC),
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 1,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: Colors.white,),),
        title: Text(
          'Usefuns',
          style: SafeGoogleFont(
            'Poppins',
            fontSize: 20 * b,
            fontWeight: FontWeight.w400,
            height: 1.5 * b / a,
            letterSpacing: 0.8 * a,
            color: const Color(0xff000000),
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.question_mark,color: Colors.white,),)
        ],
      ),
      body: Column(
          children: [
            Expanded(
              child: ListView.builder(itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                    leading: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("${index+3}"),
                        SizedBox(width: 10,),
                        Center(
                          child: ClipOval(
                            child: Image.network(
                              "",
                              width: 20,
                              height: 20,
                              fit: BoxFit.cover,
                            ),
                          )
                        ),
                      ],
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset("",width: 10,height: 10,),
                        SizedBox(width: 10,),
                        Text("10002"),
                      ],
                    ),
                    title: Text("Name"),
                );
              }),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(8),
              color: Color(0xFF031F46),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Color(0xFFB3924E),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(4),
                    height: 30,
                    child: Icon(Icons.add,color: Colors.black,),
                  ),
                  SizedBox(width: 20,),
                  Text("Create a club",style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
