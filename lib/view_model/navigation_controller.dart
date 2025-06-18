import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class NavigationController extends GetxController {
var bottom_Navindex= 0.obs;
 void changeIndex(int index){
  bottom_Navindex.value = index;
 }

}