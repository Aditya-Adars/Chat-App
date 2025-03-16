import 'package:chatapp/Domain/Constants/appcolors.dart';
import 'package:chatapp/Repository/screens/bottomnav/bottomnavigationscreen.dart';
import 'package:chatapp/Repository/screens/onboarding/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController secondnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(CupertinoIcons.back),
        ),
        backgroundColor:
            Theme.of(context).brightness == Brightness.dark
                ? AppColor.scoffolddark
                : AppColor.scaffoldlight,

        title: UiHelper.CustomText(
          text: "Your Profile",
          fontsize: 18,
          fontweight: FontWeight.bold,
          fontfamily: "bold",
          context: context,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Theme.of(context).brightness == Brightness.dark
                ? UiHelper.CustomImage(imgurl: "Picondark.png")
                : UiHelper.CustomImage(imgurl: "Piconlight.png"),
            SizedBox(height: 30),
            UiHelper.CustumTextField(
              controller: firstnameController,
              text: "First Name (Required)",
              textinputtype: TextInputType.name,
              context: context,icondata: Icons.person
            ),
            UiHelper.CustumTextField(
              controller: secondnameController,
              text: "Last Name (Required)",
              textinputtype: TextInputType.name,
              context: context, icondata: CupertinoIcons.person_2
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: UiHelper.CustumButton(
        buttonname: "Save",
        callback: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => BottomNavScreen()),
          );
        },
      ),
    );
  }
}
