import 'package:intl/intl.dart';

class CosmoDateFormat {
  static String withTime(DateTime? dateTime) {
    return DateFormat('dd MMM yyyy - HH:mm').format(dateTime ?? DateTime.now());
  }

  static String onlyDate(DateTime? dateTime) {
    return DateFormat('dd MMM yyyy').format(dateTime ?? DateTime.now());
  }

  static String onlyTime(DateTime? dateTime) {
    return DateFormat('HH:mm').format(dateTime ?? DateTime.now());
  }
}
