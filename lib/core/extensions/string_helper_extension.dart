import 'package:flutter_tdd/core/extensions/date_format.dart';
import 'package:intl/intl.dart' as international;

extension StringExtension on String? {
  /// Return true only if
  ///
  /// value is not empty && value is not null
  bool get isNotBlank => this?.isNotEmpty == true;

  bool get isBlank => this == null || (this ?? '').isEmpty;

  bool get isRTL => international.Bidi.detectRtlDirectionality(this!);

  String formatTimeStampDate() {
    if (this == null) return '';
    var date = DateTime.fromMillisecondsSinceEpoch(int.parse(this!) * 1000);
    return date.toFormattedString();
  }
}
