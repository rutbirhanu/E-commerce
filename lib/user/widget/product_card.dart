import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  String productName;
  double price;
  String offer;
  String imageUrl;

   ProductCard({super.key, required this.productName, required this.price, required this.offer, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Card(
        elevation: 2,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit:  BoxFit.cover,
                  )
                ),
                height: 150,
              width: double.maxFinite,),
              SizedBox(height: 10,),
              Text(productName, style: TextStyle(overflow: TextOverflow.ellipsis),),
              SizedBox(height: 7,),
              Text(price.toString(), style: TextStyle(overflow: TextOverflow.ellipsis),),
              SizedBox(height: 10,),
              Container(
                height: 22,
                width: 66,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.green
                ),
                child: Text(offer, style: TextStyle(color: Colors.white),),
              )

            ],
          ),
        ),
      ),
    );
  }
}
