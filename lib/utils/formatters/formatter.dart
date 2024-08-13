import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Formatter{

  static String formatDate(DateTime? date){
    date ??= DateTime.now();
    return DateFormat('DD-MM-YYYY').format(date);
  }

 static String formatCurrency(double? amount) {
  if (amount == null) {
    return ''; // Or handle null amount as needed
  }else{
    return "#${amount.toPrecision(2).toString()}";
  }
}


}