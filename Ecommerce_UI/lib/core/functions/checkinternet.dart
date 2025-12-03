import 'dart:io';

Future<bool> checkInternet() async {
  try {
    final result = await InternetAddress.lookup("google.com");
    return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
  } on SocketException {
    return false;
  }
}
