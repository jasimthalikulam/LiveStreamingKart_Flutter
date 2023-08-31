import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import 'package:live_app/utils/utils_assets.dart';
import 'create_profile.dart';

class VerifyScreen extends StatefulWidget {
  int phoneNumber;
  int otp;
  VerifyScreen({Key? key, required this.otp, required this.phoneNumber})
      : super(key: key);

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  String? otpNumber;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double a = Get.width / baseWidth;
    double b = a * 0.97;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(24 * a, 70 * a, 22 * a, 0 * a),
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0, -1),
            end: Alignment(0, 1),
            colors: <Color>[Color(0xff101137), Color(0x005034ff)],
            stops: <double>[0, 1],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () => Get.back(),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                const Spacer()
              ],
            ),
            SizedBox(height: 10 * a),
            Text(
              'Verification',
              style: SafeGoogleFont(
                'Roboto',
                fontSize: 20 * b,
                fontWeight: FontWeight.w500,
                height: 1.1725 * b / a,
                letterSpacing: 1.8 * a,
                color: const Color(0xffffffff),
              ),
            ),
            SizedBox(height: 30 * a),
            Text(
              'Enter Verification code ',
              style: SafeGoogleFont(
                'Inter',
                fontSize: 16 * b,
                fontWeight: FontWeight.w400,
                height: 1.2125 * b / a,
                letterSpacing: 1.44 * a,
                color: const Color(0xffffffff),
              ),
            ),
            SizedBox(height: 10 * a),
            OtpTextField(
              mainAxisAlignment: MainAxisAlignment.center,
              numberOfFields: 6,
              cursorColor: const Color(0xff9e26bc),
              enabledBorderColor: Colors.white,
              focusedBorderColor: const Color(0xff9e26bc),
              showFieldAsBox: false,
              textStyle: const TextStyle(color: Colors.white),
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode) {
                otpNumber = verificationCode;
              },
            ),
            SizedBox(height: 30 * a),
            Container(
              margin: EdgeInsets.fromLTRB(42 * a, 0 * a, 33 * a, 0 * a),
              width: double.infinity,
              height: 15 * a,
              child: Row(
                children: [
                  SizedBox(
                    height: 15 * a,
                    child: Text(
                      'If you didn’t receive a code! ',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 12 * b,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * b / a,
                        letterSpacing: 1.08 * a,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15 * a,
                    child: Text(
                      'Resend',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 12 * b,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * b / a,
                        letterSpacing: 1.08 * a,
                        color: const Color(0xffff0000),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50 * a),
            TextButton(
              onPressed: () {
                print(widget.otp);
                print(otpNumber);
                if (otpNumber != null && widget.otp == int.parse(otpNumber!)) {
                  Get.to(
                      () => CreateProfile(contactNumber: widget.phoneNumber));
                }
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              child: Container(
                width: 314 * a,
                height: 47 * a,
                decoration: BoxDecoration(
                  color: const Color(0xff9e26bc),
                  borderRadius: BorderRadius.circular(27 * a),
                ),
                child: Center(
                  child: Text(
                    'Verify',
                    style: SafeGoogleFont(
                      'Inter',
                      fontSize: 16 * b,
                      fontWeight: FontWeight.w700,
                      height: 1.2102272511 * b / a,
                      letterSpacing: 0.64 * a,
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
