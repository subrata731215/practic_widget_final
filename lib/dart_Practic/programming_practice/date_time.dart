import 'package:intl/intl.dart';

/// Write a Dart program to display the current date and time. Sample Output :
/// Current date and time : 2014-07-05 14:34:14

void main(){

   var date=DateFormat("yyyy-MM-dd").format(DateTime.now());
   var time=DateFormat("hh:mm:ss a").format(DateTime.now());

   print('Current date and time : $date $time');
}

