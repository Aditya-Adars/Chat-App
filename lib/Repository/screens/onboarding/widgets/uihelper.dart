import 'package:chatapp/Domain/Constants/appcolors.dart';
import 'package:flutter/material.dart';

class UiHelper {
  static CustomImage({required String imgurl}) {
    return Image.asset("assets/images/$imgurl");
  }

  static CustomText({
    required String text,
    required double fontsize,
    String? fontfamily,
    FontWeight? fontweight,
    Color? color,
    required BuildContext context,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontFamily: fontfamily ?? "regular",
        color:
            color ??
            (Theme.of(context).brightness == Brightness.dark
                ? AppColor.textdarkmode
                : AppColor.textlightmode),
        fontWeight: fontweight ?? FontWeight.normal,
      ),
    );
  }

  static CustumButton({
    required String buttonname,
    required VoidCallback callback,
    Color? buttoncolor,
  }) {
    return SizedBox(
      height: 45,
      width: 350,
      child: ElevatedButton(
        onPressed: () {
          callback();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.buttonlightmode,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
            buttonname,
            style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: "bold"
          ),
        ),
      ),
    );
  }

  static CustumTextField({
    required TextEditingController controller,
    required String text,
    required TextInputType textinputtype,
    required BuildContext context,
  }) {
    return Container(
      height: 36,
      width: 327,
      decoration: BoxDecoration(
        color:
            Theme.of(context).brightness == Brightness.dark
                ? AppColor.containerdarkmode
                : AppColor.containerlightmode,
      borderRadius: BorderRadius.circular(7)
      ),
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: TextField(
            controller: controller,
            keyboardType: textinputtype,
            decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(color: Theme.of(context).brightness==Brightness.dark?AppColor.hintdarkmode:AppColor.hintlightmode,fontSize: 14),
            border: InputBorder.none
        ),
      ),
    ),
    );
  }
}
