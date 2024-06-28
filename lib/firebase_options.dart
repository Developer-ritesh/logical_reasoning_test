// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBplU_lF5MSAP3_IMXxUPyvzBTcta_Ee48',
    appId: '1:877421696075:web:e0d4955351dd10225be9ce',
    messagingSenderId: '877421696075',
    projectId: 'logical-reasoning-test',
    authDomain: 'logical-reasoning-test.firebaseapp.com',
    storageBucket: 'logical-reasoning-test.appspot.com',
    measurementId: 'G-YJKSMVPNV1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAe3aUTbLGQKsW2JJPyhOxnjxFw0_IpJC8',
    appId: '1:877421696075:android:18e7b55c9ac399bf5be9ce',
    messagingSenderId: '877421696075',
    projectId: 'logical-reasoning-test',
    storageBucket: 'logical-reasoning-test.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDHipSBsP8kTpOD0I6xzUqrVtWFC_uW9_s',
    appId: '1:877421696075:ios:fc053c9db81bdeac5be9ce',
    messagingSenderId: '877421696075',
    projectId: 'logical-reasoning-test',
    storageBucket: 'logical-reasoning-test.appspot.com',
    iosBundleId: 'com.example.logicalReasoningTest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDHipSBsP8kTpOD0I6xzUqrVtWFC_uW9_s',
    appId: '1:877421696075:ios:fc053c9db81bdeac5be9ce',
    messagingSenderId: '877421696075',
    projectId: 'logical-reasoning-test',
    storageBucket: 'logical-reasoning-test.appspot.com',
    iosBundleId: 'com.example.logicalReasoningTest',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBplU_lF5MSAP3_IMXxUPyvzBTcta_Ee48',
    appId: '1:877421696075:web:0f828596d029efd75be9ce',
    messagingSenderId: '877421696075',
    projectId: 'logical-reasoning-test',
    authDomain: 'logical-reasoning-test.firebaseapp.com',
    storageBucket: 'logical-reasoning-test.appspot.com',
    measurementId: 'G-3LYGRXH21Z',
  );
}