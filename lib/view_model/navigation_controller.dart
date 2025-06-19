import 'package:get/get.dart';

class NavigationController extends GetxController {
var bottom_Navindex= 0.obs;
 void changeIndex(int index){
  bottom_Navindex.value = index;
 }

}