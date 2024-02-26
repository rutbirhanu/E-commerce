import 'package:flutter/material.dart';
import 'package:footwear_admin/admin/widgets/dropdown.dart';
import 'package:footwear_admin/user/widget/multiclass_dropdown.dart';
import 'package:footwear_admin/user/widget/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Footwear Store", style: TextStyle(fontWeight: FontWeight.bold),),
          actions: [
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.logout))
          ],
        ),
        body:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 50,
                margin: EdgeInsets.all(8),
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (_,idx){
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Chip(
                          label:Text("snicker"),
                      ),
                    );
                    }
                ),
              ),
              Row(
                children: [
                  Expanded(
                   child: MultiClassDropDown(),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: DropDownWidget(
                        items: ["low to high", "high to low"],
                      label: 'Sort Items',
                      onSelected: (selected) {  },),
                  )
                ],
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: 5,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      childAspectRatio: 0.8
                    ),
                    itemBuilder: (_,idx){
                      return ProductCard(imageUrl: "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/71a00703e8c14c76aa8471445a9eaf40_9366/Ultrabounce_Shoes_Blue_HP5783_HM1.jpg",
                      price: 100,productName: "Nike air",offer: "30 % offer",
                      );
                    }
                ),
              )
            ],
          ),
        ) ,
      ),
    );
  }
}
