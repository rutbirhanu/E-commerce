import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Detail"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect
                (borderRadius: BorderRadius.circular(10),
                  child: Image.network("https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/71a00703e8c14c76aa8471445a9eaf40_9366/Ultrabounce_Shoes_Blue_HP5783_HM1.jpg", fit: BoxFit.cover, height: 160,width: 240,),

              ),
            ),
            SizedBox(height: 50,),
            Text("Nike Air 200", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            SizedBox(height: 14,),

            Text("Product Description", style: TextStyle(fontSize: 14),),
            SizedBox(height: 14,),

            Text("1000", style: TextStyle(color: Colors.green, fontSize: 18),),
            SizedBox(height: 20,),
            TextField(
              maxLines: 3,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Billing Address",
              ),
            ),
            SizedBox(height: 28,),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){},
                child: Text("Buy Now"),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 19),
                  primary: Colors.indigo,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
