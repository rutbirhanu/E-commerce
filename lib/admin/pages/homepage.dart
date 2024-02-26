import 'package:flutter/material.dart';
import 'package:footwear_admin/admin/controller/home_controller.dart';
import 'package:footwear_admin/admin/pages/addproduct.dart';

import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (logic) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Product List"),
        ),
        body: SafeArea(
          child: ListView.builder(
              itemCount: logic.productList.length,
              itemBuilder: (_, idx) {
                return ListTile(
                  title: Text(logic.productList[idx].name ?? ""),
                  subtitle: Text(logic.productList[idx].price.toString()),
                  trailing: IconButton(
                    onPressed: () {
                      logic.deleteProduct(logic.productList[idx].id!);
                    },
                    icon: Icon(Icons.delete),
                  ),
                );
              }),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(AddProduct());
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.grey,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          ),
        ),
      );
    });
  }
}
