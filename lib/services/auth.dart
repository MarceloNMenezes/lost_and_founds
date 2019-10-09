import 'package:firebase_auth/firebase_auth.dart';

class Auth{

static Future<String> signIn(String email, String password) async {
  final auth = FirebaseAuth.instance;
  final result = await auth.signInWithEmailAndPassword(email: email, password: password);
  return result.user.uid;
}

static Future<String> signUp(String email, String password) async {
  final auth = FirebaseAuth.instance;
  final result = await auth.signInWithEmailAndPassword(email: email, password: password);
  return result.user.uid;

}

static Future<void> signOut() async {
  FirebaseAuth.instance.signOut();
}

}