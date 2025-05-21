import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import '../../../core/injection.dart';
import '../../../core/repositories/app_repository.dart';

class ChatProvider extends ChangeNotifier {
  void sendMessage({required String message}) {
    final firestore = getInjection<FirebaseFirestore>();
    firestore.collection('chats').add({
      'text': message,
      'createdAt': Timestamp.now(),
      'email': AppRepository.getEmail(),
      'name': AppRepository.getName(),
      'userId': AppRepository.getUID(),
      'photo': AppRepository.getPhotoUrl(),
    });
  }
}
