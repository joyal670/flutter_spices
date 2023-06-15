import 'dart:async';

import 'package:flutter/material.dart';
import 'package:spices/core/dim.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:spices/presentation/dashboard/dashboard.dart';
import 'package:spices/presentation/utils/utils.dart';
import '../../core/colors.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  int secondsRemaining = 10;
  bool enableResend = false;
  late Timer timer;
  String timerText = "Send OTP";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.large(
        backgroundColor: colorParisDaisy,
        onPressed: () {
          CommonUtils().displaySuccessMotionToast(context);
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return DashboardScreen();
          }));
        },
        child: const Icon(
          Icons.arrow_right_alt,
          color: colorBlack,
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            height20,
            Center(
              child: Image.asset(
                'assets/images/password.png',
                width: 70,
                height: 70,
              ),
            ),
            height20,
            const Text(
              'Enter OTP',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.normal,
              ),
            ),
            height20,
            OtpTextField(
              mainAxisAlignment: MainAxisAlignment.start,
              numberOfFields: 4,
              fieldWidth: 60,
              clearText: true,
              fillColor: colorMineShaft,
              filled: true,
              cursorColor: colorWhite,
              textStyle: TextStyle(color: Colors.amber),
              disabledBorderColor: Colors.green,
              enabledBorderColor: Colors.transparent,
              focusedBorderColor: Colors.amber,
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {}, // end onSubmit
            ),
            height20,
            SizedBox(
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(colorParisDaisy)),
                onPressed: () {
                  enableResend = true;
                  _startTimer();
                  enableResend ? _resendCode : null;
                },
                child: Text(
                  timerText,
                  style: const TextStyle(color: colorBlack),
                ),
              ),
            ),
            Text(
              'Resend in $secondsRemaining seconds',
              style: const TextStyle(color: colorGrey),
            ),
          ],
        ),
      )),
    );
  }

  void _startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (secondsRemaining != 0) {
        setState(() {
          secondsRemaining--;
        });
      } else {
        setState(() {
          enableResend = true;
          timerText = 'Resend OTP';
        });
      }
    });
  }

  void _resendCode() {
    //other code here
    setState(() {
      secondsRemaining = 30;
      enableResend = false;
    });
  }

  @override
  dispose() {
    timer.cancel();
    super.dispose();
  }
}
