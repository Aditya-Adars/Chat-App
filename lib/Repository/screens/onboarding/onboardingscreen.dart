import 'package:chatapp/Domain/Constants/appcolors.dart';
import 'package:chatapp/Domain/Constants/cubits/themecubits.dart';
import 'package:chatapp/Repository/screens/login/loginscreen.dart';
import 'package:chatapp/Repository/screens/onboarding/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Theme.of(context).brightness == Brightness.dark
                ? AppColor.scoffolddark
                : AppColor.scaffoldlight,
        actions: [
          IconButton(
            onPressed: () {
              BlocProvider.of<ThemeCubit>(context).toggletheme();
            },
            icon: Icon(Icons.dark_mode),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgurl: "onboarding.png"),
            SizedBox(height: 20),
            UiHelper.CustomText(
              text: "Connect easily with",
              fontsize: 24,
              fontfamily: "bold",
              fontweight: FontWeight.bold,
              context: context,
            ),

            UiHelper.CustomText(
              text: "Your family and friends",
              fontsize: 24,
              fontfamily: "bold",
              fontweight: FontWeight.bold,
              context: context,
            ),

            UiHelper.CustomText(
              text: "over countries",
              fontsize: 24,
              fontfamily: "bold",
              fontweight: FontWeight.bold,
              context: context,
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustumButton(
        buttonname: "Start Messaging",
        callback: () {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
