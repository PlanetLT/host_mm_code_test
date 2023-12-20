import 'package:code_test/core/helper/state.dart';
import 'package:code_test/data/model/code_test_model.dart';
import 'package:code_test/data/viewModels/code_test_vm.dart';
import 'package:code_test/views/custom/state_dialog.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class HomeController extends GetxController {
  final CodeTestVM codeTestVM = Get.find();
  RxList<CodeTestModel> allPostsList = RxList();
  RxnString errorMessage = RxnString();
  RxBool isLoading = RxBool(false);

  RxBool isHaveConnectivity = RxBool(false);
  
  @override
  void onInit() {
    super.onInit();
    getAllPosts();
    _subscribeLoginState();

    
  }

  void getAllPosts() async {
     isLoading.value = true;
     isHaveConnectivity.value =
          await InternetConnectionChecker().hasConnection;
    
     codeTestVM.getAllPost();
  }

  void _subscribeLoginState() {
    codeTestVM.postStream.listen((event) async {
      if (event is StateLoading<List<CodeTestModel>>) {
         showLoadingDialog();
      }

      if (event is StateSuccess<List<CodeTestModel>>) {
        if (Get.isDialogOpen ?? false) {
          Get.back();
        }
        allPostsList.value = event.data;
        isLoading.value = false;
      }

      if (event is StateError<List<CodeTestModel>>) {
        isLoading.value = false;
        errorMessage.value = event.error.toString();
      } else {
        isLoading.value = false;
        errorMessage.value = null;
      }
    });
  }
}