import 'package:chatapp/Domain/Constants/appcolors.dart';
import 'package:chatapp/Repository/screens/onboarding/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContactsScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var arrContacts = [
    {
      "img": "Avatar.png",
      "name": "Casio lane",
      "lastseen": "Last seen yesterday",
    },
    {"img": "Avatar1.png", "name": "Julie Rani", "lastseen": "Online"},
    {
      "img": "Avatar2.png",
      "name": "Krishna Radhae",
      "lastseen": "Last seen today",
    },
    {
      "img": "Avatar3.png",
      "name": "Aditya Adarsh",
      "lastseen": "Last seen 3hrs ago",
    },
    {
      "img": "Avatar4.png",
      "name": "Ashish Adarsh",
      "lastseen": "Last seen 5min ago",
    },
    {
      "img": "Avatar5.png",
      "name": "Jane Mario",
      "lastseen": "Last seen 1month ago",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Theme.of(context).brightness == Brightness.dark
                ? AppColor.scoffolddark
                : AppColor.scaffoldlight,
        title: UiHelper.CustomText(
          text: "Contacts",
          fontsize: 18,
          context: context,
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            UiHelper.CustumTextField(
              controller: searchController,
              text: "Search",
              textinputtype: TextInputType.name,
              context: context,
              icondata: Icons.search,
            ),
            SizedBox(height: 10),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: UiHelper.CustomImage(
                        imgurl: arrContacts[index]["img"].toString(),
                      ),
                      title: UiHelper.CustomText(
                        text: arrContacts[index]["name"].toString(),
                        fontsize: 14,
                        context: context,
                        fontweight: FontWeight.w600,
                      ),
                      subtitle: UiHelper.CustomText(
                        text: arrContacts[index]["lastseen"].toString(),
                        fontsize: 12,
                        context: context,
                        color: Color(0XFFADB5BD),
                      ),
                    );
                  },
                  itemCount: arrContacts.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
