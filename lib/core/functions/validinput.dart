// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:get/get_utils/get_utils.dart';

validInput(String value ,int minLength ,int maxLength ,String validationType){
  if(validationType == "username"){
    if(!GetUtils.isUsername(value)){
      return "NVUN".tr;
    }
  }
  if(validationType == "email"){
    if(!GetUtils.isEmail(value)){
      return "NVEA".tr;
    }
  }
  if(validationType == "phone"){
    if(!GetUtils.isPhoneNumber(value)){
      return "NVPN".tr;
    }
  }
  if(value.isEmpty){
    return "CBE".tr;
  }
  if(value.length < minLength){
    return "VCBLET".tr + minLength.toString();
  }
  if(value.length > maxLength){
    return "VCBLAT".tr + maxLength.toString();
  }
}

