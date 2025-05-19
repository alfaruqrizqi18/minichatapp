import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../models/response_state.dart';
import '../utils/print_log.dart';

class GoogleSignInService {
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<ResponseState> signInGoogle() async {
    try {
      final googleSignInAccount = await _googleSignIn.signIn();
      if (googleSignInAccount == null) {
        // user stopped sign in process
        return ResponseState(error: "Sign in aborted");
      }

      final googleAuth = await googleSignInAccount.authentication;
      final userCredential = await FirebaseAuth.instance.signInWithCredential(
        GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        ),
      );

      final String? idToken = await userCredential.user?.getIdToken(true);
      if (idToken == null || idToken.isEmpty) {
        return ResponseState(data: "Unable to retrieve token");
      } else {
        return ResponseState(success: true, data: idToken);
      }
    } catch (e, s) {
      printLog('signInGoogle error: $e, stacktrace: $s', isError: true);
      return ResponseState(error: "Unknown error");
    }
  }

  Future<bool> isLoggedIn() async {
    final bool isSignedIn = await _googleSignIn.isSignedIn();
    return isSignedIn;
  }

  Future<User?> getLoggedInAccount() async {
    final user = FirebaseAuth.instance.currentUser;
    return user;
  }

  Future<void> logout() async {
    await _googleSignIn.signOut();
  }
}
