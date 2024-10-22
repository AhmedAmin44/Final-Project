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
    apiKey: 'AIzaSyCY-Yhhb50r3R45JzQbwFh3hV5qsHhGD4o',
    appId: '1:4420527121:web:a7ed888c283e07b2977db0',
    messagingSenderId: '4420527121',
    projectId: 'shopme-bdb36',
    authDomain: 'shopme-bdb36.firebaseapp.com',
    storageBucket: 'shopme-bdb36.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA9qiXBCXT922GqAH_lim1Yo7lp4bUhpGM',
    appId: '1:4420527121:android:a0e9e230003a688c977db0',
    messagingSenderId: '4420527121',
    projectId: 'shopme-bdb36',
    storageBucket: 'shopme-bdb36.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAnHKmdPfwKlN2_XkehjG_RStef4BtPBxw',
    appId: '1:4420527121:ios:a9a68b28a7dbef8b977db0',
    messagingSenderId: '4420527121',
    projectId: 'shopme-bdb36',
    storageBucket: 'shopme-bdb36.appspot.com',
    iosBundleId: 'com.example.ecommerce',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAnHKmdPfwKlN2_XkehjG_RStef4BtPBxw',
    appId: '1:4420527121:ios:a9a68b28a7dbef8b977db0',
    messagingSenderId: '4420527121',
    projectId: 'shopme-bdb36',
    storageBucket: 'shopme-bdb36.appspot.com',
    iosBundleId: 'com.example.ecommerce',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCY-Yhhb50r3R45JzQbwFh3hV5qsHhGD4o',
    appId: '1:4420527121:web:1b750827bdee80e5977db0',
    messagingSenderId: '4420527121',
    projectId: 'shopme-bdb36',
    authDomain: 'shopme-bdb36.firebaseapp.com',
    storageBucket: 'shopme-bdb36.appspot.com',
  );

}