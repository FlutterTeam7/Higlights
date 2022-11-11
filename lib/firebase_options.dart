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
    apiKey: 'AIzaSyDywZEpIufzraf0TD6YIjV33fHMajeowdM',
    appId: '1:862637067519:web:2ad44a4baaff19e08210ca',
    messagingSenderId: '862637067519',
    projectId: 'highlights-e68cb',
    authDomain: 'highlights-e68cb.firebaseapp.com',
    storageBucket: 'highlights-e68cb.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAHon9VcyXvu9h3mD8LEVY68KIOC-1Um4Q',
    appId: '1:862637067519:android:d7e6000e4ae38eac8210ca',
    messagingSenderId: '862637067519',
    projectId: 'highlights-e68cb',
    storageBucket: 'highlights-e68cb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBsUzY66O8QheerSNiy5mcFIaVhfk-PIRI',
    appId: '1:862637067519:ios:234ff01b4a31d6d88210ca',
    messagingSenderId: '862637067519',
    projectId: 'highlights-e68cb',
    storageBucket: 'highlights-e68cb.appspot.com',
    iosClientId: '862637067519-e8lqb9id66ilprqja2mr17in9c9kq8p5.apps.googleusercontent.com',
    iosBundleId: 'com.example.highlights',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBsUzY66O8QheerSNiy5mcFIaVhfk-PIRI',
    appId: '1:862637067519:ios:234ff01b4a31d6d88210ca',
    messagingSenderId: '862637067519',
    projectId: 'highlights-e68cb',
    storageBucket: 'highlights-e68cb.appspot.com',
    iosClientId: '862637067519-e8lqb9id66ilprqja2mr17in9c9kq8p5.apps.googleusercontent.com',
    iosBundleId: 'com.example.highlights',
  );
}
