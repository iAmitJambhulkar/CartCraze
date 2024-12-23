import 'package:intl/intl.dart';

class cartFormatter{
  static String formatDate(DateTime? date){
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }
  
  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }
  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10) {
      return '${phoneNumber.substring(0, 5)}-${phoneNumber.substring(5)}';
    } else if (phoneNumber.length == 11 && phoneNumber.startsWith('0')) {
      return '${phoneNumber.substring(0, 1)}-${phoneNumber.substring(1, 6)}-${phoneNumber.substring(6)}';
    }
    return phoneNumber; // Return as-is if it doesn't match expected lengths.
  }


}