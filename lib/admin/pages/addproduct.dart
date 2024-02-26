import 'package:flutter/material.dart';
import 'package:footwear_admin/admin/controller/home_controller.dart';
import 'package:footwear_admin/admin/widgets/dropdown.dart';
import 'package:get/get.dart';


class AddProduct extends StatelessWidget {
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (ctrl) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          centerTitle: true,
          title: Text("Add Product", style: TextStyle(fontSize: 15),),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(16),
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 9,),
                Text("Add New Product", style: TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),),
                SizedBox(height: 15,),
                TextField(
                  controller: ctrl.productNameCtrl,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      label: Text("Product Name"),
                      hintText: "Enter the product name",
                      hintStyle: TextStyle(color: Colors.black38)
                  ),
                ),
                SizedBox(height: 16,),
                TextField(
                  controller: ctrl.productDescCtrl,
                  maxLines: 4,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      label: Text("Description"),
                      hintText: "Add Description about the product",
                      hintStyle: TextStyle(color: Colors.black38)
                  ),
                ),
                SizedBox(height: 16,),
                TextField(
                  controller: ctrl.productImageCtrl,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      label: Text("Image URL"),
                      hintText: "Enter Image url",
                      hintStyle: TextStyle(color: Colors.black38)
                  ),
                ),
                SizedBox(height: 16,),
                TextField(
                  controller: ctrl.productPriceCtrl,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      label: Text("Product Price"),
                      hintText: "Enter the product price",
                      hintStyle: TextStyle(color: Colors.black38)
                  ),
                ),
                SizedBox(height: 21,),
                Row(
                  children: [
                    Expanded(child: DropDownWidget(
                      items: ["cat1", "cat2", "cat3", "cat4"],
                      label: ctrl.category,
                        onSelected:(selected){
                          ctrl.category=selected;
                          ctrl.update();
                        }),
                    ),
                    SizedBox(width: 30,),
                    Expanded(child: DropDownWidget(
                      items: ["branc1", "brand2", "brand3", "brand4"],
                      label: ctrl.brand,
                        onSelected:(selected){
                            ctrl.brand=selected;
                            ctrl.update();
                        }),
                    ),
                  ],
                ),
                SizedBox(height: 18,),
                Text("Offer Product"),
                DropDownWidget(items: ["true", "false"], label: ctrl.offer,
                onSelected: (selected){
                ctrl.offer = selected  ;
                ctrl.update();
                },),
                SizedBox(height: 25,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.indigo,
                    onPrimary:Colors.white
                  ),
                    onPressed: (){
                    ctrl.addProduct();
                    },
                    child: Text("Add Product"))
              ],
            ),
          ),
        ),
      );
    });
  }
}
