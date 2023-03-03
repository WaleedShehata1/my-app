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
    apiKey: 'AIzaSyDw8zFqtgR8B1dwj9OQTDi2NOZ8H-6osDk',
    appId: '1:578308354733:web:02ac7b8c0c6c39a9b28c24',
    messagingSenderId: '578308354733',
    projectId: 'myapp-1a712',
    authDomain: 'myapp-1a712.firebaseapp.com',
    storageBucket: 'myapp-1a712.appspot.com',
    measurementId: 'G-N583Y6NQMZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCH5czwvwfhNJWWdUJZ2h_NOjCUqP0In9M',
    appId: '1:578308354733:android:71b770dbda4bddc9b28c24',
    messagingSenderId: '578308354733',
    projectId: 'myapp-1a712',
    storageBucket: 'myapp-1a712.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA_FGBtU5mr7iKmtwYcrjMCgyO7JiWjDOo',
    appId: '1:578308354733:ios:7a7ecf3735eb5efcb28c24',
    messagingSenderId: '578308354733',
    projectId: 'myapp-1a712',
    storageBucket: 'myapp-1a712.appspot.com',
    iosClientId: '578308354733-es35bnq0khndptbg7vj4na0bql73cklm.apps.googleusercontent.com',
    iosBundleId: 'com.example.myApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA_FGBtU5mr7iKmtwYcrjMCgyO7JiWjDOo',
    appId: '1:578308354733:ios:7a7ecf3735eb5efcb28c24',
    messagingSenderId: '578308354733',
    projectId: 'myapp-1a712',
    storageBucket: 'myapp-1a712.appspot.com',
    iosClientId: '578308354733-es35bnq0khndptbg7vj4na0bql73cklm.apps.googleusercontent.com',
    iosBundleId: 'com.example.myApp',
  );
}
