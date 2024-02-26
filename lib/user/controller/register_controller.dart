import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:footwear_admin/user/model/user.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {

  FirebaseFirestore firestore= FirebaseFirestore.instance;
  late CollectionReference collectionReference;

  TextEditingController nameController=TextEditingController();
  TextEditingController phoneController=TextEditingController();

  @override
  void onInit(){
    super.onInit();
    collectionReference=firestore.collection("users");
  }

  register()async{
    try {
      if(nameController.text.isEmpty || phoneController.text.isEmpty){
        Get.snackbar("Alert", "You must fill all fields");
        return ;
      }
      DocumentReference docReference = collectionReference.doc();
      User user = User(
          id: docReference.id,
          name: nameController.text,
          phone: int.tryParse(phoneController.text)!
      );
      await docReference.set(user.toJson());
      Get.snackbar("success", "You have been registered successfully",
          colorText: Colors.green);
    }
    catch(e){
      Get.snackbar("error", e.toString(),
          colorText: Colors.red);
    }
  }
}
