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
    apiKey: 'AIzaSyBPLtOy66FPsbwg5q9IvHwGKXuwe-mWbgE',
    appId: '1:663547569112:web:98bb3ea63ca6176fdbc8ad',
    messagingSenderId: '663547569112',
    projectId: 'rafe-my-note',
    authDomain: 'rafe-my-note.firebaseapp.com',
    storageBucket: 'rafe-my-note.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAsMZZJvwjQcWK6cRCuxuc6HCN6tj0LDS4',
    appId: '1:663547569112:android:e03542728fa80ec7dbc8ad',
    messagingSenderId: '663547569112',
    projectId: 'rafe-my-note',
    storageBucket: 'rafe-my-note.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAMmYrAlLOsS2ChO_UrRnMCJTOS5-gseVM',
    appId: '1:663547569112:ios:193da19722d7ac1edbc8ad',
    messagingSenderId: '663547569112',
    projectId: 'rafe-my-note',
    storageBucket: 'rafe-my-note.appspot.com',
    iosClientId: '663547569112-7s9k0fch5v6vaj6t4driq0kkdren95it.apps.googleusercontent.com',
    iosBundleId: 'app.vercel.flutterSite.mynotes',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAMmYrAlLOsS2ChO_UrRnMCJTOS5-gseVM',
    appId: '1:663547569112:ios:193da19722d7ac1edbc8ad',
    messagingSenderId: '663547569112',
    projectId: 'rafe-my-note',
    storageBucket: 'rafe-my-note.appspot.com',
    iosClientId: '663547569112-7s9k0fch5v6vaj6t4driq0kkdren95it.apps.googleusercontent.com',
    iosBundleId: 'app.vercel.flutterSite.mynotes',
  );
}
