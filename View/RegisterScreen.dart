import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:gg/Controller/HomeController.dart';
import 'package:gg/View/MainScreen/secondScreen.dart';
import 'package:gg/shared/component/component.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class RegisterScreen extends StatelessWidget {
  var phoneController = TextEditingController();
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeController>(
        init: HomeController(),
        builder: (HomeController controller) => SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 90,
                ),
                GradientText(
                  "Enter your information",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  colors: [Colors.greenAccent.shade700,Colors.teal],
                ),
                SizedBox(height: 20,),
                Text("Name",
                    style: Theme.of(context).textTheme.labelLarge),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: "Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Number",
                    style: Theme.of(context).textTheme.labelLarge),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    labelText: "Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Password",
                    style: Theme.of(context).textTheme.labelLarge),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: passwordController,
                  obscureText: controller.Gg,
                  decoration: InputDecoration(
                    suffixIcon: MaterialButton(
                        onPressed: () {
                          controller.isSecure();

                        },
                        child: controller.secureOrNot),
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                SizedBox(height: 20,),

                DefaultButton(function: (){
                  Get.to(SecondPage());
                },
                    label: 'Register',
                    context: context),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Saidaly ya Saidaly ya Saidalyyyyyy Baddy Dawa for her and for me! ",
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
