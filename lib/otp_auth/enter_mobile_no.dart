import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logical_reasoning_test/otp_auth/auth_controller.dart';
import 'package:logical_reasoning_test/utils.dart';

class EnterMobileNoScreen extends StatelessWidget {
  EnterMobileNoScreen({super.key});

  final authController = Get.put(AuthController());
  final number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                decoration: BoxDecoration(
                  color: app100,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextField(
                  controller: number,
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      counterText: "",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: app500),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: app700),
                      ),
                      prefixIcon: SizedBox(
                        width: 80,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              '+91',
                              style: TextStyle(
                                fontSize: 22,
                                color: app600,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              width: 1,
                              color: app800,
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                      contentPadding: EdgeInsets.all(0)),
                  style: TextStyle(
                    fontSize: 22,
                    color: app800,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  authController.sendOTP(number.text.trim());
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: app200,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'SEND OTP',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: app800),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.arrow_forward, color: app800),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
