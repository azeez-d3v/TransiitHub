import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCx4nXBGdMk9MIOeHsLqsA_H8p75PAi_FU",
            authDomain: "transportr-8yziyb.firebaseapp.com",
            projectId: "transportr-8yziyb",
            storageBucket: "transportr-8yziyb.appspot.com",
            messagingSenderId: "860216892110",
            appId: "1:860216892110:web:6d267c0a4aadb4578e8e9f"));
  } else {
    await Firebase.initializeApp();
  }
}
