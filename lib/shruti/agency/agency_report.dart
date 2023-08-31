import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_app/utils/utils_assets.dart';

class AgencyReport extends StatefulWidget {
  const AgencyReport({super.key});

  @override
  State<AgencyReport> createState() => _AgencyReportState();
}

class _AgencyReportState extends State<AgencyReport> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double a = Get.width / baseWidth;
    double b = a * 0.97;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15 * a),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30 * b,
              ),
              Center(
                child: cont_method('Commission', 158),
              ),
              SizedBox(
                height: 10 * a,
              ),
              Table(
                children: [
                  TableRow(
                    children: [
                      red_conta("Host\nID"),
                      red_conta(
                        "active Host Quantity",
                      ),
                      red_conta(
                        "son of room gifting",
                      ),
                      red_conta(
                        "son of room salary",
                      ),
                      red_conta(
                        "Commission",
                      ),
                    ],
                  ),
                  tablerow(),
                  tablerow(),
                ],
              ),
              SizedBox(
                height: 25 * a,
              ),
              cont_method('Report', 158),
              SizedBox(
                height: 20 * a,
              ),
              Container(
                decoration: BoxDecoration(border: Border.all()),
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        Container(
                          height: 50,
                          decoration:
                              const BoxDecoration(color: Color(0xffFF0000)),
                          child: const Text(
                            "UseFuns\nID",
                            style:
                                TextStyle(fontSize: 12.0, color: Colors.white),
                          ),
                        ),
                        Container(
                          height: 50,
                          decoration:
                              const BoxDecoration(color: Color(0xffFF0000)),
                          child: const Text(
                            "Name",
                            style:
                                TextStyle(fontSize: 12.0, color: Colors.white),
                          ),
                        ),
                        Container(
                          height: 50,
                          decoration:
                              const BoxDecoration(color: Color(0xffFF0000)),
                          child: const Text(
                            "Son of valid\ndays",
                            style:
                                TextStyle(fontSize: 12.0, color: Colors.white),
                          ),
                        ),
                        Container(
                          height: 50,
                          decoration:
                              const BoxDecoration(color: Color(0xffFF0000)),
                          child: const Text(
                            "Son of valid\ndays",
                            style:
                                TextStyle(fontSize: 12.0, color: Colors.white),
                          ),
                        ),
                        Container(
                          height: 50,
                          decoration:
                              const BoxDecoration(color: Color(0xffFF0000)),
                          child: const Text(
                            "Total Salary",
                            style:
                                TextStyle(fontSize: 12.0, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    tablerow(),
                    tablerow(),
                    tablerow(),
                    tablerow(),
                    tablerow(),
                    tablerow(),
                    tablerow(),
                    tablerow(),
                    tablerow(),
                    tablerow(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container red_conta(txt) {
    double baseWidth = 360;
    double a = Get.width / baseWidth;
    double b = a * 0.97;
    return Container(
      height: 45 * a,
      decoration: const BoxDecoration(color: Color(0xffFF0000)),
      child: Text(
        txt,
        style: TextStyle(fontSize: 8.0 * a, color: Colors.white),
      ),
    );
  }

  Align txtt2(text, ali) {
    double baseWidth = 360;
    double a = Get.width / baseWidth;
    double b = a * 0.97;
    return Align(
      alignment: ali,
      child: Text(
        text,
        style: SafeGoogleFont(
          'Poppins',
          fontSize: 12 * b,
          fontWeight: FontWeight.w500,
          height: 1.5 * b / a,
          color: Colors.black,
        ),
      ),
    );
  }

  Text txtt(txt) {
    double baseWidth = 360;
    double a = Get.width / baseWidth;
    double b = a * 0.97;
    return Text(
      txt,
      style: SafeGoogleFont(
        'Poppins',
        fontSize: 9 * b,
        fontWeight: FontWeight.w400,
        height: 1.5 * b / a,
        color: Colors.black,
      ),
    );
  }

  Container cont_method(txt, double w) {
    double baseWidth = 360;
    double a = Get.width / baseWidth;
    double b = a * 0.97;

    return Container(
      width: w * a,
      height: 20 * a,
      color: const Color(0xffFF0000),
      child: Center(
          child: Text(
        txt,
        style: SafeGoogleFont(
          'Poppins',
          fontSize: 12 * b,
          fontWeight: FontWeight.w500,
          height: 1.5 * b / a,
          color: const Color.fromARGB(255, 253, 253, 253),
        ),
      )),
    );
  }

  TableRow tablerow() {
    return const TableRow(children: [
      Text(
        "    0",
        style: TextStyle(fontSize: 15.0),
      ),
      Text(
        "     0",
        style: TextStyle(fontSize: 15.0),
      ),
      Text(
        "     0",
        style: TextStyle(fontSize: 15.0),
      ),
      Text(
        "     0",
        style: TextStyle(fontSize: 15.0),
      ),
      Text(
        "     0",
        style: TextStyle(fontSize: 15.0),
      ),
    ]);
  }
}
