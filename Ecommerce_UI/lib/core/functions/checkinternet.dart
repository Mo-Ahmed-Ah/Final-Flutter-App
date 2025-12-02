import 'dart:io';

checkInternet() async {
  try{
    var isInternetConnectted = await InternetAddress.lookup("google.com");
    if(isInternetConnectted.isNotEmpty && isInternetConnectted[0].rawAddress.isNotEmpty){
      return true;
    }
  }on SocketException catch(_){
    return false;
  }
}