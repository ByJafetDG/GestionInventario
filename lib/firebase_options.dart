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
    apiKey: 'AIzaSyDymcogONw8GrTYxE0txOXbnwplSaNEH1s',
    appId: '1:227053425407:web:2219b1e7aa4072464472ca',
    messagingSenderId: '227053425407',
    projectId: 'gestion-inventario-cc34b',
    authDomain: 'gestion-inventario-cc34b.firebaseapp.com',
    storageBucket: 'gestion-inventario-cc34b.appspot.com',
    measurementId: 'G-05VC8TZKN9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDJz552zwTORsDTZDphIWGnt8c4RVTXvv4',
    appId: '1:227053425407:android:245e536063443e094472ca',
    messagingSenderId: '227053425407',
    projectId: 'gestion-inventario-cc34b',
    storageBucket: 'gestion-inventario-cc34b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDluCmSOMxdx--WpRBRD20ROvMgesbK90A',
    appId: '1:227053425407:ios:e9307a0573e165eb4472ca',
    messagingSenderId: '227053425407',
    projectId: 'gestion-inventario-cc34b',
    storageBucket: 'gestion-inventario-cc34b.appspot.com',
    iosBundleId: 'com.example.gestionInventario',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDluCmSOMxdx--WpRBRD20ROvMgesbK90A',
    appId: '1:227053425407:ios:e9307a0573e165eb4472ca',
    messagingSenderId: '227053425407',
    projectId: 'gestion-inventario-cc34b',
    storageBucket: 'gestion-inventario-cc34b.appspot.com',
    iosBundleId: 'com.example.gestionInventario',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDymcogONw8GrTYxE0txOXbnwplSaNEH1s',
    appId: '1:227053425407:web:0ddbac249937cb954472ca',
    messagingSenderId: '227053425407',
    projectId: 'gestion-inventario-cc34b',
    authDomain: 'gestion-inventario-cc34b.firebaseapp.com',
    storageBucket: 'gestion-inventario-cc34b.appspot.com',
    measurementId: 'G-VKMPZ3FFJ7',
  );
}
