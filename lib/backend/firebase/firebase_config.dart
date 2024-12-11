import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDl0lXAQRdvJQIuU2w72F9YTxqdqtKwQaM",
            authDomain: "ghostdelivery-99b14.firebaseapp.com",
            projectId: "ghostdelivery-99b14",
            storageBucket: "ghostdelivery-99b14.appspot.com",
            messagingSenderId: "69431046757",
            appId: "1:69431046757:web:2ea881099890c271750c8c",
            measurementId: "G-BN70PWJ5FK"));
  } else {
    await Firebase.initializeApp();
  }
}
