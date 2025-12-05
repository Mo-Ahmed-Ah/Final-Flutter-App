import 'package:finalflutterapp/core/class/statusrequest.dart';

handlingData(respose){
  if(respose is StatusRequest){
      return respose;
    
  }else{
    return StatusRequest.success;
  }
}