import 'package:flutter/foundation.dart';

import '../../../core/models/response_state.dart';
import '../../../core/repositories/app_repository.dart';
import '../../../core/services/google_signin_service.dart';

class AppAuthProvider extends ChangeNotifier {
  Future<ResponseState> signIn() async {
    final request = await GoogleSignInService().signInGoogle();
    if (request.success) {
      // set app state logged in
      AppRepository.setLoggedIn(loggedIn: true);

      // set current user
      final currentUser = GoogleSignInService().getLoggedInAccount();
      AppRepository.setEmail(email: currentUser?.email ?? "");
      AppRepository.setName(name: currentUser?.displayName ?? "");
      AppRepository.setUID(uid: currentUser?.uid ?? "");
      AppRepository.setPhotoUrl(photoUrl: currentUser?.photoURL ?? "");
      return ResponseState(success: true);
    } else {
      return ResponseState(success: false);
    }
  }

  Future<void> signOut() async {
    await GoogleSignInService().logout();
    AppRepository.logout();
  }
}
