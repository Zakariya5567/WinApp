import 'package:get/get.dart';

class HistoryController extends GetxController{

  bool isloading=false;
  setloading(bool value){
    isloading=value;
    update();
  }

}