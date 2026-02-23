

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learnify/core/app_style.dart';
import 'package:learnify/screens/top_categories.dart';
import 'package:lecle_flutter_carousel_pro/lecle_flutter_carousel_pro.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: primary,iconTheme: IconThemeData(color: whiteColor),
      title: Text("Learn Flutter",style: Style.appbarTitle),
        actions: [
          Icon(Icons.search),
          SizedBox(height: 20.0),
          Icon(Icons.shopping_bag_outlined),
          SizedBox(height: 10.0),
        ],
      ),
      body: ListView(children: [
        SizedBox(height: 200,child: Carousel(
          dotSize: 5,
          dotIncreasedColor: primary,
          images: const[
            NetworkImage('https://codewithandrea.com/img/banners/all-courses-bundle.png'),
            NetworkImage('https://storage.googleapis.com/cms-storage-bucket/images/Flutter_335_Still_v01.width-635.png'),
            NetworkImage('https://framerusercontent.com/images/BSoTpREe1FMQcye1FgNAU4eBXos.jpg'),
            NetworkImage('https://storage.googleapis.com/cms-storage-bucket/images/Dart_3_8_Horiztonal_Still.width-635.png'),
          ],
        ),),

        Padding(padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
          child:Text("Top Category",style: Style.headLineStyle6)),
        TopCategories(),
        const SizedBox(height: 20.0),
        Container(height: 12.0,color: blueDivider),
        Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
          height: 120.0,
          decoration: BoxDecoration(
              gradient:  const LinearGradient(
                begin: Alignment.centerLeft,
                colors: [Color(0xFF80CBC4), Color(0xFFBBDEFB)],),
              borderRadius: BorderRadius.circular(15.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Let's find the right course\nfor you!",
                      style: Style.headLineStyle5.copyWith(color: Colors.teal)),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(5.0)
                    ),
                    child: Text("Get Recommendations",style: Style.headLineStyle2),
                  )
                ],
              ),
              Image.network('https://cdn-icons-png.flaticon.com/512/4185/4185714.png',scale: 5,)
            ],
          ),
        ),
        Container(height: 12.0,color: blueDivider),
        Padding(padding: EdgeInsets.only(top: 20.0,right: 20.0,left: 20.0,bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
              Text("Top Courses",style: Style.headLineStyle6),
              Text("SEE ALL",style: Style.headLineStyle2.copyWith(color: primary))])),
        ListView.builder(itemCount: 3,shrinkWrap: true,physics: ScrollPhysics(),itemBuilder: (BuildContext context,int index){
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
            padding: const EdgeInsets.all(15.0),
            height: 120,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [BoxShadow(blurRadius: 5.0,color: grey300)]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Flutter Course",style: Style.headLineStyle4,),
                    const SizedBox(height: 5.0),
                    Row(children: [
                      Text("4.6",style: Style.headLineStyle2.copyWith(color: greyColor)),
                      const SizedBox(width: 2.0),
                      const Icon(Icons.star,color: CupertinoColors.systemYellow,size: 18),
                      const SizedBox(width: 5.0),
                      Text("•",style: Style.headLineStyle2.copyWith(color: greyColor)),
                      const SizedBox(width: 5.0),
                      Text("221K learners",style: Style.headLineStyle2.copyWith(color: greyColor),),
                    ],),
                    const SizedBox(height: 10.0),
                    Row(
                      children: [
                        const Icon(Icons.price_change),
                        const SizedBox(width: 5.0),
                        Text("Enroll and win rewards",style: Style.headLineStyle2.copyWith(color: greyColor),)
                      ],
                    ),
                  ],
                ),
              SizedBox(
                height: 90,width: 80,
                child: Stack(
                  children: [
                    Positioned(top: 0,
                      child: Container(
                        height: 80,width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: NetworkImage("https://cdn.firstcry.com/education/2022/04/29104227/1075168772.jpg"),
                                fit: BoxFit.cover)
                        ),
                      ),
                    ),
                    Positioned(bottom: 0, left: 15, right: 15,
                      child: Container(
                        height: 20,width: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFF80CBC4),
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [BoxShadow(blurRadius: 5.0,color: grey300),],
                        ),
                        child: Center(child: Text("FREE",style: Style.headLineStyle2.copyWith(color: whiteColor),),),
                      ),
                    ),]))

            ],
            ),
          );
        })


      ],),
    );
  }
}
