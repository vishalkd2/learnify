import 'package:flutter/material.dart';
import 'package:learnify/core/app_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: whiteColor),
        backgroundColor: primary,
        title: Text("Account",style: Style.appbarTitle),
      ),

      body: Column(
        children: [
          SizedBox(height: 10.0),
          ListTile(
              leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey[600],
                  child: Text("R",
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: whiteColor))),

              title: Text("Rohit Sharma",style: Style.headLineStyle3.copyWith(fontWeight: FontWeight.w500)),
              subtitle: Text("rohitsharma123@gmail.com",style: Style.headLineStyle2.copyWith(fontWeight: FontWeight.w500)),
              trailing: const Icon(Icons.mode_edit_outlined)),


          SizedBox(height: 10.0),
          Container(height: 12.0,color: blueDivider),

          ListTile(
            leading: const Icon(Icons.file_download_outlined),
            title: const Text("Manage Download"),
            trailing: Icon(Icons.arrow_forward_ios,size: 15,color: blackColor,),
          ),
          Container(height: 2.0,color: blueDivider),

          ListTile(
            leading: const Icon(Icons.mode_comment_outlined),
            title: const Text("Refer and Learn"),
            trailing: Icon(Icons.arrow_forward_ios,size: 15,color: blackColor,),
          ),
          Container(height: 2.0,color: blueDivider),

          ListTile(
            leading: const Icon(Icons.link),
            title: const Text("Connected Account"),
            trailing: Icon(Icons.arrow_forward_ios,size: 15,color: blackColor,),
          ),
          Container(height: 2.0,color: blueDivider),

          ListTile(
            leading: const Icon(Icons.star_border),
            title: const Text("Rate App"),
            trailing: Icon(Icons.arrow_forward_ios,size: 15,color: blackColor,),
          ),
          Container(height: 2.0,color: blueDivider),

          ListTile(
            leading: const Icon(Icons.share_outlined),
            title: const Text("Share JustAcademy app"),
            trailing: Icon(Icons.arrow_forward_ios,size: 15,color: blackColor,),
          ),
          Container(height: 2.0,color: blueDivider),

          ListTile(
            leading: const Icon(Icons.contact_page_outlined),
            title: const Text("Contacts us"),
            trailing: Icon(Icons.arrow_forward_ios,size: 15,color: blackColor,),
          ),
          Container(height: 2.0,color: blueDivider),

          ListTile(
            leading: const Icon(Icons.policy_outlined),
            title: const Text("Privacy Policy"),
            trailing: Icon(Icons.arrow_forward_ios,size: 15,color: blackColor,),
          ),
          Container(height: 2.0,color: blueDivider),

          const ListTile(
            leading: Icon(Icons.logout),
            title: Text("Sign out"),
          ),

          Container(height: 20.0,color: blueDivider),

          Container(color: blueDivider,child: Center(child: Text("Version 1.0.1",style: Style.headLineStyle2.copyWith(color: greyColor),)),),

          Expanded(child: Container(color: blueDivider)),
        ],
      ),
    );
  }
}