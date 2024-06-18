import 'dart:io';

checkInternet() async {
  try {
    var result = await InternetAddress.lookup("google.com");
    if (result.isNotEmpty) {
      return true;
    }
    //on name_exeption  نضعها عند  توقع الخطأ المحتمل أي نضع الexception المحتملة
  } on SocketException catch (_) {
    return false;
  }
}
