import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:finalflutterapp/core/class/statusrequest.dart';
import 'package:finalflutterapp/core/functions/checkinternet.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
    try {
      if (await checkInternet()) {
        var respose = await http.post(Uri.parse(linkurl), body: data);
        print(respose.statusCode.toString() + respose.body.toString());
        if (respose.statusCode == 200 || respose.statusCode == 201) {
          Map resposebody = jsonDecode(respose.body);
          print("==================" + resposebody.toString() + "============================");
          return right(resposebody);
        } else {
          return const Left(StatusRequest.serverfailyer);
        }
      } else {
        return const Left(StatusRequest.offlinefailure);
      }
    } catch (_) {
      return Left(StatusRequest.serverExcepttion);
    }
  }
}
