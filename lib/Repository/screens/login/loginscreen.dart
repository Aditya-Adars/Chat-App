import 'package:chatapp/Domain/Constants/appcolors.dart';
import 'package:chatapp/Repository/screens/onboarding/widgets/uihelper.dart';
import 'package:chatapp/Repository/screens/otp/otpscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Theme.of(context).brightness == Brightness.dark
                ? AppColor.scoffolddark
                : AppColor.scaffoldlight,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(CupertinoIcons.back),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomText(
              text: "Enter Your Phone Number",
              fontsize: 24,
              context: context,
              fontweight: FontWeight.bold,
              fontfamily: "bold",
            ),
            SizedBox(height: 10),
            UiHelper.CustomText(
              text: "Please confirm your country code and enter",
              fontsize: 14,
              context: context,
            ),
            UiHelper.CustomText(
              text: "your phone number",
              fontsize: 14,
              context: context,
            ),
            SizedBox(height: 20),
            UiHelper.CustumTextField(
              controller: phoneController,
              text: "Phone Number",
              textinputtype: TextInputType.number,
              context: context, icondata: Icons.phone
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustumButton(
        buttonname: "Continue",
        callback: () {
          Navigator.push(
            context,MaterialPageRoute(builder: (context)=>OTPScreen())
          );
        },
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
