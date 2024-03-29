// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
              'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCOJen94bEdqwo-heaXs96xGOy8quI5HKI',
    appId: '1:537642736363:web:82d1f97182e1c4f2c47cae',
    messagingSenderId: '537642736363',
    projectId: 'doctor-appointment-b6c14',
    authDomain: 'doctor-appointment-b6c14.firebaseapp.com',
    storageBucket: 'doctor-appointment-b6c14.appspot.com',
    measurementId: 'G-5KJWYY49R6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCW1EDNbS8jYUbeGps7DoOpOKJ-CsShEfY',
    appId: '1:537642736363:android:2e0b0fb80e8af1a1c47cae',
    messagingSenderId: '537642736363',
    projectId: 'doctor-appointment-b6c14',
    storageBucket: 'doctor-appointment-b6c14.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDyDony0EcRNVvrA-Ku5ps2_B2JLFzIjAA',
    appId: '1:537642736363:ios:849ff29d95a285e0c47cae',
    messagingSenderId: '537642736363',
    projectId: 'doctor-appointment-b6c14',
    storageBucket: 'doctor-appointment-b6c14.appspot.com',
    iosBundleId: 'com.example.doctor',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDyDony0EcRNVvrA-Ku5ps2_B2JLFzIjAA',
    appId: '1:537642736363:ios:b9ef4333baefcff6c47cae',
    messagingSenderId: '537642736363',
    projectId: 'doctor-appointment-b6c14',
    storageBucket: 'doctor-appointment-b6c14.appspot.com',
    iosBundleId: 'com.example.doctor.RunnerTests',
  );
}