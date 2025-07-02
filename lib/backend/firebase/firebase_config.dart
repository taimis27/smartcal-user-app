import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAmK_GjmmV9ldcL567tLtiEvPrwq6LLN7k",
            authDomain: "smart-cal-user-app-1yo0ab.firebaseapp.com",
            projectId: "smart-cal-user-app-1yo0ab",
            storageBucket: "smart-cal-user-app-1yo0ab.firebasestorage.app",
            messagingSenderId: "612378009178",
            appId: "1:612378009178:web:e69176668e8b4fd6058263"));
  } else {
    await Firebase.initializeApp();
  }
}
