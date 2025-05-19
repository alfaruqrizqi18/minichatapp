import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:minichatapp/core/models/response_state.dart';

import '../utils/print_log.dart';

class GoogleSignInUseCase {
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

  Future<void> logout() async {
    await _googleSignIn.signOut();
  }
}
