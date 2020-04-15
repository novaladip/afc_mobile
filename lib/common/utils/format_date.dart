import 'package:intl/intl.dart';

String formatDate(String date) => DateFormat.yMd().format(DateTime.parse(date));
