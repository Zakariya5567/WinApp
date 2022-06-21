import 'package:get/get.dart';

class OverviewController extends GetxController{


int totalprice=10;
int totaltickets=1;
int price=10;

settotalprice(){
  totalprice=price*totaltickets;
  update();
}

incrementTickets(){
  totaltickets=totaltickets+1;
  settotalprice();
    print("total tickets: $totaltickets");
  print("total price: $totalprice");
  update();
}
deccrementTickets(){
  totaltickets=totaltickets-1;
  settotalprice();
    print("total tickets: $totaltickets");
  print("total price: $totalprice");
  update();
}
}