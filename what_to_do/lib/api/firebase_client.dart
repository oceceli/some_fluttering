import 'package:firebase_core/firebase_core.dart';

class FirebaseClient {
  late final Future<FirebaseApp> _firebaseInstance;

  FirebaseClient() {
    _firebaseInstance = Firebase.initializeApp();
  }

  Future<FirebaseApp> getInstance() {
    return _firebaseInstance;
  }
}
