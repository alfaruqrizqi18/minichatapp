import 'package:cloud_firestore/cloud_firestore.dart';

class ChatModel {
  final String text;
  final Timestamp createdAt;
  final String email;
  final String name;
  final String userId;
  final String photo;

  ChatModel({
    required this.text,
    required this.createdAt,
    required this.email,
    required this.name,
    required this.userId,
    required this.photo,
  });

  // Factory constructor to create object from Firestore document
  factory ChatModel.fromMap(Map<String, dynamic> map) {
    return ChatModel(
      text: map['text'] ?? '',
      createdAt: map['createdAt'] ?? Timestamp.now(),
      email: map['email'] ?? '',
      name: map['name'] ?? '',
      userId: map['userId'] ?? '',
      photo: map['photo'] ?? '',
    );
  }

  // Convert object to map for saving in Firestore
  Map<String, dynamic> toMap() {
    return {
      'text': text,
      'createdAt': createdAt,
      'email': email,
      'name': name,
      'userId': userId,
      'photo': photo,
    };
  }
}
