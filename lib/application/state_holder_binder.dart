import 'package:get/get.dart';

import '../presentation/state_holder/login_controller.dart';
import '../presentation/state_holder/signup_state_holder.dart';

class StateHolderBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(SignUpController());
    Get.put(LoginController());
  }
}