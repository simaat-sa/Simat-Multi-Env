import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {

  String toFormattedString() {
    return DateFormat('yyyy-MM-dd','en').format(this);
  }

  String toFormattedEnString() {
    return DateFormat('yyyy-MM-dd','en').format(this);
  }

}