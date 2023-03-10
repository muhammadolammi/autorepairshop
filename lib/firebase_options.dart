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
    apiKey: 'AIzaSyBC035tdj9aCOUazD5jEgOVYuklYPE68WU',
    appId: '1:820610208005:web:6a36dba528aa17bf65676c',
    messagingSenderId: '820610208005',
    projectId: 'autorepairshop-82442',
    authDomain: 'autorepairshop-82442.firebaseapp.com',
    storageBucket: 'autorepairshop-82442.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDMPnCRbdB-at96Ojs09Le9OWev0Q0EDw4',
    appId: '1:820610208005:android:77fde48a6835e5b865676c',
    messagingSenderId: '820610208005',
    projectId: 'autorepairshop-82442',
    storageBucket: 'autorepairshop-82442.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDvGgXlx36KOgB7R4WN27hyun19yGxAPgM',
    appId: '1:820610208005:ios:c0f4a289a9dafa6965676c',
    messagingSenderId: '820610208005',
    projectId: 'autorepairshop-82442',
    storageBucket: 'autorepairshop-82442.appspot.com',
    iosClientId: '820610208005-o25km1fvof7h364us7log86uta81hh59.apps.googleusercontent.com',
    iosBundleId: 'wixforum.com.autorepairshop',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDvGgXlx36KOgB7R4WN27hyun19yGxAPgM',
    appId: '1:820610208005:ios:c0f4a289a9dafa6965676c',
    messagingSenderId: '820610208005',
    projectId: 'autorepairshop-82442',
    storageBucket: 'autorepairshop-82442.appspot.com',
    iosClientId: '820610208005-o25km1fvof7h364us7log86uta81hh59.apps.googleusercontent.com',
    iosBundleId: 'wixforum.com.autorepairshop',
  );
}
