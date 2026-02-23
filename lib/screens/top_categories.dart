import 'package:flutter/material.dart';
import 'package:learnify/core/app_style.dart';

class TopCategories extends StatelessWidget {
  const TopCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 70,width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          itemCount: 10,
          itemBuilder: (context,index){
              return Container(
                padding: const EdgeInsets.all(15),
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                height: 70,width: 180,
                decoration: BoxDecoration(
                    gradient: LinearGradient(begin: Alignment.centerLeft,colors: [Color(0xFFBBDEFB), Color(0xFFE3F2FD)]),
                borderRadius: BorderRadius.circular(15)),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                  Text("Software \n Development",style: Style.headLineStyle2),
                  Image.network("https://cdn-icons-png.flaticon.com/512/2201/2201570.png",scale: 15,)
                ],),
              );
          }),
    );
  }
}
