
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  //design pattern singlton
  AuthRepository._();

  static final AuthRepository instance = AuthRepository._();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
//login
  Future<String> login(String email, String password) async {
    AuthResult result = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    FirebaseUser user = result.user;
    return user.uid;
  }
//signUp
  Future<String> signUp(String email, String password) async {
    AuthResult result = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    FirebaseUser user = result.user;
    return user.uid;
  }
//signOut
  Future<void> signOut() {
    return _firebaseAuth.signOut();
  }

  Future<FirebaseUser> getCurrentUser() {
    return _firebaseAuth.currentUser();
  }
}