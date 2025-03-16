import 'package:chatapp/Domain/Constants/appcolors.dart';
import 'package:chatapp/Repository/screens/onboarding/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
        Theme.of(context).brightness == Brightness.dark
            ? AppColor.scoffolddark
            : AppColor.scaffoldlight,
        title: UiHelper.CustomText(
          text: "Chats",
          fontsize: 18,
          context: context,
          fontweight: FontWeight.bold,
          fontfamily: "bold"
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.mark_chat_unread_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_rounded))
        ],
      ),
    );
  }
}
