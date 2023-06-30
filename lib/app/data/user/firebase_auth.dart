import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthentication {
  final _firebaseAuth = FirebaseAuth.instance;

  Future<void> signUp({required String email, required String password}) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw Exception('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw Exception('The account already exists for that email.');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        throw ('The email address is not valid.');
      } else if (e.code == 'user-disabled') {
        throw ('The user corresponding to the given email has been disabled.');
      } else if (e.code == 'user-not-found') {
        throw ('There is no user corresponding to the given email.');
      } else if (e.code == 'wrong-password') {
        throw ('The password is invalid for the given email, or the account corresponding to the email does not have a password set.');
      }

      // if (e.code == 'user-not-found') {
      //   throw Exception('No user found for that email.');
      // } else if (e.code == 'wrong-password') {
      //   throw Exception('Wrong password provided for that user.');
      // }
      // else {
      //handle other exceptions
      //   print('Exception occurred: $e');
      // }
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      throw Exception(e);
    }
  }

  // static Future<User> logIn(
  //     {required String email, required String password}) async {
  //   UserCredential result = await _firebaseAuth.signInWithEmailAndPassword(
  //       email: email, password: password);
  //   final user = result.user!;
  //   return user;
  // }

  // static Future<User> signUp(
  //     {required String email, required String password}) async {
  //   UserCredential result = await _firebaseAuth.createUserWithEmailAndPassword(
  //       email: email, password: password);
  //   final user = result.user!;
  //   return user;
  // }
}
