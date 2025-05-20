import '../services/hive_service.dart';

class AppRepository {
  static bool isDarkMode() {
    return CosmoHive.appBox.get('isDarkMode') ?? false;
  }

  static void setDarkMode({required bool useDarkMode}) {
    CosmoHive.appBox.put('isDarkMode', useDarkMode);
  }

  static bool isLoggedIn() {
    return CosmoHive.appBox.get('isLoggedIn') ?? false;
  }

  static void setLoggedIn({required bool loggedIn}) {
    CosmoHive.appBox.put('isLoggedIn', loggedIn);
  }

  static String getEmail() {
    return CosmoHive.appBox.get('email');
  }

  static setEmail({required String email}) {
    return CosmoHive.appBox.put('email', email);
  }

  static String getName() {
    return CosmoHive.appBox.get('name');
  }

  static setName({required String name}) {
    return CosmoHive.appBox.put('name', name);
  }

  static String getUID() {
    return CosmoHive.appBox.get('uid');
  }

  static setUID({required String uid}) {
    return CosmoHive.appBox.put('uid', uid);
  }

  static String getPhotoUrl() {
    return CosmoHive.appBox.get('photoUrl');
  }

  static setPhotoUrl({required String photoUrl}) {
    return CosmoHive.appBox.put('photoUrl', photoUrl);
  }

  static logout() {
    CosmoHive().destroySessions();
  }
}
