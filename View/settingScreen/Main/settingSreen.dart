import 'package:flutter/material.dart';
import 'package:gg/View/MainScreen/LoginScreen.dart';
import 'package:gg/View/settingScreen/DarkMode/DarkModeScreen.dart';
import 'package:gg/View/settingScreen/LanguageScreen/LanguageScreen.dart';
import '../../../Controller/SettingController/SettingController.dart';
import '../../../shared/component/component.dart';
import 'package:get/get.dart';
class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingController>(
      init: SettingController(),
      builder: (SettingController controller)=>SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.blueGrey,
                      child: Icon(Icons.person, size: 50),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "asm al zlma",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text("+963998632535",
                          style: Theme.of(context).textTheme.bodyMedium,),
                        Text("created on: 26/11/2023",
                          style: Theme.of(context).textTheme.bodyMedium,)
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                DefaultIconButton(
                    function: (){
                    },
                    label: "Edit you Profile",
                    icon: Icon(
                      Icons.edit,
                      color: Colors.white,
                    )),
                SizedBox(
                  height: 20,
                ),
                DefaultIconButton(
                    function: (){
                      Get.to(DarkModeScreen());
                    },
                    label: "Dark Mode",
                    icon: Icon(
                      Icons.dark_mode,
                      color: Colors.white,
                    )),
                SizedBox(
                  height: 20,
                ),
                DefaultIconButton(
                    function: (){
                      Get.to(LanguageScreen());
                    },
                    label: 'Language',
                    icon: Icon(
                      Icons.language,
                      color: Colors.white,
                    )),
                SizedBox(
                  height: 20,
                ),
                DefaultIconButton(
                    function: (){},
                    label: 'About',
                    icon: Icon(
                      Icons.question_mark,
                      color: Colors.white,
                    )),
                SizedBox(
                  height: 20,
                ),
                DefaultIconButton(
                    function: (){
                      Get.off(LoginScreen());
                    },
                    label: 'Logout',
                    icon: Icon(
                      Icons.arrow_back_sharp,
                      color: Colors.white,
                    ))
              ]),
        ),
      ),
    );
  }
}
