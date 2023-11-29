import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gg/model/loginModel.dart';
import '../Network/Dio/dioHelper.dart';

class HomeController extends GetxController{
  bool Gg = true;
  int  count = 0;
  bool checkBox = false;

  int navBarIndex = 0;
  Icon secureOrNot = Icon(Icons.remove_red_eye);

  void isSecure() {
    Gg = !Gg;
    secureOrNot = Gg ? Icon(Icons.remove_red_eye) : Icon(Icons.visibility_off);
    update();
  }

  void changeCheckBox() {
    checkBox = !checkBox;
    update();
  }

  LoginModel? loginModel1;

  void loginState({required String email, required String password}) {
    DioHelper.postData(
      data: {'phone': '$email', 'password': '$password'},
      url: 'login',
    ).then((value) {
      print("G");
      print('${value.toString()} Gg');
    }).catchError((error) {
      print(error.toString());
    });
    // DioHelper.postData(
    //     url: 'login',
    //     data: {
    //       'phone': email,
    //       'password': password,
    //     }).then((value) {
    //   print("Gg");
    //   print("${value.toString()}");
    //   print('${loginModel1!.token}');
    //   update();
    // }).catchError((error){
    //     // An unknown error occurred
    //     print(error.toString());
    //   });
  }

  changeNavBar(int index) {
    navBarIndex = index;
    update();
  }
  void increaseCount(){
    count++;
    update();
  }
  void decreaseCount(){
    count--;
    update();
  }
}
