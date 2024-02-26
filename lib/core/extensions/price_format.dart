import 'package:intl/intl.dart';

extension PriceFormat on String {
  String get priceFormat {
    final NumberFormat usCurrency = NumberFormat('#,##0', 'en_US');
    return usCurrency.format(double.parse(this));
  }


}