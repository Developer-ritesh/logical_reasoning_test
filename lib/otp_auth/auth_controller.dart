import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:logical_reasoning_test/otp_auth/verify_otp.dart';
import 'package:logical_reasoning_test/screen/home.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String? verificationId;

  // Function to send OTP verification code
  Future<void> sendOTP(String phone) async {
    log('send start');
    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: '+91'+phone,
        verificationCompleted: (PhoneAuthCredential credential) async {
          // Auto-verification (rare): Sign the user in if verification happens automatically
          await _auth.signInWithCredential(credential);
          Get.snackbar(
            "Success",
            "Phone number verified!",
            snackPosition: SnackPosition.BOTTOM,
          );
        },
        verificationFailed: (FirebaseAuthException exception) {
          log('${exception.message}');
          Get.snackbar(
            "Error",
            "Phone number verification failed: ${exception.message}",
            snackPosition: SnackPosition.BOTTOM,
          );
        },
        codeSent: (String verificationId, int? resendToken) {
          this.verificationId = verificationId;
          Get.snackbar(
            "OTP Sent",
            "A verification code has been sent to your phone.",
            snackPosition: SnackPosition.BOTTOM,
          );
          Get.to(VerifyOtpScreen());
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          this.verificationId = verificationId;
        },
      );
    } catch (error) {
      Get.snackbar(
        "Error",
        "An unexpected error occurred: $error",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  // Function to verify OTP and sign in the user
  Future<void> verifyOtp(String otp) async {
    try {
      if (verificationId != null) {
        PhoneAuthCredential credential = PhoneAuthProvider.credential(
            verificationId: verificationId!, smsCode: otp);
        await _auth.signInWithCredential(credential);
        Get.snackbar(
          "Success",
          "Phone number verified and signed in!",
          snackPosition: SnackPosition.BOTTOM,
        );
        Get.to(HomePage());
      } else {
        Get.snackbar(
          "Error",
          "No verification ID found. Please request a new OTP.",
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (error) {
      Get.snackbar(
        "Error",
        "Phone number verification failed: ${error.toString()}",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
