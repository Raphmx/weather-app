class Utils {
  static String formatDate(DateTime date, [String seperator = '.']) {
    final day = date.day < 10 ? '0${date.day}' : '${date.day}';
    final month = date.month < 10 ? '0${date.month}' : '${date.month}';
    final year = date.year < 10 ? '0${date.year}' : '${date.year}';
    return '$day$seperator$month$seperator$year';
  }

  static String formatDateTime(DateTime date, [String seperator = ':']) {
    final formattedDate = formatDate(date);
    final hour = date.hour < 10 ? '0${date.hour}' : '${date.hour}';
    final minute = date.minute < 10 ? '0${date.minute}' : '${date.minute}';
    return '$formattedDate $hour$seperator$minute';
  }
}
