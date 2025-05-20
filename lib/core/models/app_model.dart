// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive_ce/hive.dart';

class AppModel extends HiveObject {
  AppModel({
    this.isDarkMode = false,
    this.isLoggedIn = false,
    this.email = "",
    this.name = "",
    this.uid = "",
    this.photoUrl = "",
  });

  bool isDarkMode;
  bool isLoggedIn;
  String email;
  String name;
  String uid;
  String photoUrl;
}
