import 'package:flutter/material.dart';
import 'package:learnify/core/app_style.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: whiteColor),
        backgroundColor: primary,
        title: Text("Notification",style: Style.appbarTitle),
      ),
      body:  ListView.separated(
        // physics: const ClampingScrollPhysics(),
        // padding: EdgeInsets.zero,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Container(
                  height: 50,width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                          image: NetworkImage("https://akm-img-a-in.tosshub.com/indiatoday/images/bodyeditor/202009/e-learning_digital_education-1200x1080.jpg?XjMNHsb4gLoU_cC7110HB7jVghJQROOj"),
                          fit: BoxFit.cover)
                  ),),
                title: const Text("Looking for Android Developer"),
                subtitle: const Text("Learn Flutter in Mumbai",maxLines: 1,overflow: TextOverflow.ellipsis),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: const Divider(),
            );
          }),
    );
  }
}