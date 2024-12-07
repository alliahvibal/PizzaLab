import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCsgm1-hqSQQMH5lu-OOu6ROI5psGGIelE",
            authDomain: "pizza-lab-63cca.firebaseapp.com",
            projectId: "pizza-lab-63cca",
            storageBucket: "pizza-lab-63cca.firebasestorage.app",
            messagingSenderId: "204355283711",
            appId: "1:204355283711:web:6eb2de40f8f881d2fa3aca",
            measurementId: "G-LX516KL1L1"));
  } else {
    await Firebase.initializeApp();
  }
}
