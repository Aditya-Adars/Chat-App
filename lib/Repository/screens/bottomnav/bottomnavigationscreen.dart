import 'package:chatapp/Domain/Constants/appcolors.dart';
import 'package:chatapp/Repository/screens/chat/chatscreen.dart';
import 'package:chatapp/Repository/screens/contacts/contactsscreen.dart';
import 'package:chatapp/Repository/screens/more/morescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [ContactsScreen(), ChatScreen(), MoreScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_2_alt),
            label: "Contacts",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_fill),
            label: "Chats",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More"),
        ],
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor:
            Theme.of(context).brightness == Brightness.dark
                ? AppColor.bottomdark
                : AppColor.bottomlight,
        selectedIconTheme: IconThemeData(
          color:
              Theme.of(context).brightness == Brightness.dark
                  ? AppColor.icondarkmode
                  : AppColor.iconlightmode,
        ),
      ),
      body: IndexedStack(children: pages, index: currentIndex),
    );
  }
}
