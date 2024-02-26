import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:footwear_admin/admin/model/product.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late CollectionReference productCollection;

  TextEditingController productNameCtrl=TextEditingController();
  TextEditingController productPriceCtrl=TextEditingController();
  TextEditingController productDescCtrl=TextEditingController();
  TextEditingController productImageCtrl=TextEditingController();

  String? category="cate1";
  String? brand="bran1";
  String? offer="false";
  List<Product> productList=[];

  @override
  void onInit() async{
    productCollection = firestore.collection("product");
    await fetchData();
    super.onInit();
}

 addProduct() async {
    try {
      DocumentReference doc = productCollection.doc();
      Product product= Product(
        id:doc.id,
        name:productNameCtrl.text,
        description:productDescCtrl.text,
        image: productImageCtrl.text,
        price: double.tryParse(productPriceCtrl.text),
        category:category,
        brand: brand,
        offer: offer
      );

      final converted = product.toJson();
     await doc.set(converted);
      Get.snackbar("success", "product added successfully", colorText: Colors.green);
      setValueDefault();

    } catch (e) {
      Get.snackbar("error", e.toString(), colorText: Colors.red);

    }
 }

 fetchData() async{
    try {
      QuerySnapshot snapshot= await productCollection.get();
      List<Product> prod = snapshot.docs.map((doc) =>
            Product.fromJson(doc.data() as Map<String, dynamic>)).toList();
      productList.clear();
      productList.assignAll(prod);
    } catch (e) {
      Get.snackbar("Error", e.toString(), colorText: Colors.red);
    }finally{
      update();
    }
 }

 deleteProduct(String id) async{
    try{
      await productCollection.doc(id).delete();
      fetchData();
    }
    catch(e){
      Get.snackbar("Error", e.toString(), colorText: Colors.red);
    }

 }

 setValueDefault(){
    productPriceCtrl.clear();
    productImageCtrl.clear();
    productDescCtrl.clear();
    productNameCtrl.clear();
    category="cate1";
     brand="bran1";
     offer="false";
     update();

 }

}
