import 'package:flutter/material.dart';
import 'package:footwear_admin/user/controller/register_controller.dart';
import 'package:footwear_admin/user/pages/register.dart';
import 'package:get/get.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>
      (builder: (logic) {
      return Scaffold(
        body: Container(
          width: double.maxFinite,
          color: Colors.blueGrey[50],
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome Back!", style: TextStyle(fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple),),
              SizedBox(height: 22,),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    label: Text("Phone Number"),
                    hintText: "Enter your phone number",
                    hintStyle: TextStyle(fontSize: 14),
                    prefixIcon: Icon(Icons.phone_android)
                ),
              ),
              SizedBox(height: 40,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple,
                      onPrimary: Colors.white
                  ),
                  onPressed: () {},
                  child: Text("Login")
              ),
              SizedBox(height: 15,),
              TextButton(
                  onPressed: () {
                    Get.to(RegisterPage());
                  },
                  child: Text("Register for new account",
                    style: TextStyle(color: Colors.deepPurple),)
              )

            ],
          ),
        ),
      );
    });
  }
}
