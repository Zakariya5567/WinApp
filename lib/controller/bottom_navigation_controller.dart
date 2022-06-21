import 'package:get/get.dart';

class BottomNavigationController extends GetxController{

  int currentPage=0;
  setCurrentPage(int page){
    currentPage = page;
    print("current page is : $currentPage");
    update();
  }

}