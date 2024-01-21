

import 'package:intl/intl.dart';

class Apihelper {
  static String url_base = "http://10.0.2.2:80/petapp/public/api";
  static String image_base = "http://10.0.2.2:80/petapp/public/upload";


  static String money(int value){
    return NumberFormat.simpleCurrency(locale: 'vi').format(value);
  }
}