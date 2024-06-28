import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logical_reasoning_test/otp_auth/enter_mobile_no.dart';
import 'package:logical_reasoning_test/firebase_options.dart';
import 'package:logical_reasoning_test/utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: app_color,
          primary: app_color,
        ),
        useMaterial3: true,
      ),
      home: EnterMobileNoScreen(),
    );
  }
}
