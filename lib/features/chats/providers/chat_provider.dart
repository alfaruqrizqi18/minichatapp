import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import '../../../core/repositories/app_repository.dart';
import '../../../injection.dart';

class ChatProvider extends ChangeNotifier {
  void sendMessage({required String message}) {
    final firestore = AppInjections().injection.get<FirebaseFirestore>();
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
