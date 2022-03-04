import 'package:intl/intl.dart';

class Utils {
  static String formatDateTime(int date) {
    var dateTime = DateTime.fromMillisecondsSinceEpoch(date * 1000);
    final formattedDay =
        DateFormat('dd EEE yyyy HH:mm', 'tr_TR').format(dateTime);
    return formattedDay;
  }

  static String formatDateTimeHour(int date) {
    var dateTime = DateTime.fromMillisecondsSinceEpoch(date * 1000);
    var hour = DateFormat.Hm().format(dateTime);
    return hour;
  }

  static String formatDateTimeDay(int date) {
    var dateTime = DateTime.fromMillisecondsSinceEpoch(date * 1000);
    var day = DateFormat.EEEE('tr_TR').format(dateTime);
    return day;
  }
}
