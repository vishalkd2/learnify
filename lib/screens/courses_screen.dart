import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../core/app_style.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: whiteColor),
        backgroundColor: primary,
        title: Text("My Certificate",style: Style.appbarTitle),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 10.0),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            Row(children: [
              const Icon(Icons.celebration_rounded,color: CupertinoColors.systemYellow,),
              const SizedBox(width: 10),
              Text("Get Certified Get Ahead",style: Style.headLineStyle4),
            ],),
            const SizedBox(height: 10.0),
            Text("Fast-track your career with World's #1 Online",style: Style.headLineStyle2,),
            const SizedBox(height: 20.0),
            Column(
              children: [
                SizedBox(
                  height: 200,
                  child: Stack(
                    children: [
                      Container(
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: NetworkImage("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/certificate-of-appreciation-design-template-7289b7fef37b1bda2dc3527df90bfe87_screen.jpg?ts=1631442106"),
                                  fit: BoxFit.cover))),
                      Positioned(
                          bottom: 0,left: 20,right: 20,
                          child: SizedBox(
                            height: 100,
                            child: Card(
                              elevation: 3,
                              margin: const EdgeInsets.symmetric(horizontal: 15.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                child: Column(
                                  children: [
                                    const SizedBox(height: 15),
                                    Text("Flutter",style: Style.headLineStyle4),
                                    const SizedBox(height: 15),
                                    Text("Get certified by global certification bodies and deepen your expertise",
                                        textAlign: TextAlign.center,
                                        style: Style.headLineStyle2),
                                  ],
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(height: 30.0),
                SizedBox(
                  height: 200,
                  child: Stack(
                    children: [
                      Container(
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: NetworkImage("https://www.scholarhat.com/images/how-it-works-certificate.webp"),
                                  fit: BoxFit.cover))),
                      Positioned(
                          bottom: 0,left: 20,right: 20,
                          child: SizedBox(
                            height: 100,
                            child: Card(
                              elevation: 3,
                              margin: const EdgeInsets.symmetric(horizontal: 15.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                child: Column(
                                  children: [
                                    const SizedBox(height: 15),
                                    Text("React Native",style: Style.headLineStyle4),
                                    const SizedBox(height: 15),
                                    Text("Get certified by global certification bodies and deepen your expertise",
                                        textAlign: TextAlign.center,
                                        style: Style.headLineStyle2),
                                  ],
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(height: 30.0),
                SizedBox(
                  height: 200,
                  child: Stack(
                    children: [
                      Container(
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: NetworkImage("https://4achievers.com/custom/certificates/4Achievers-certification.png"),
                                  fit: BoxFit.cover))),
                      Positioned(
                          bottom: 0,left: 20,right: 20,
                          child: SizedBox(
                            height: 100,
                            child: Card(
                              elevation: 3,
                              margin: const EdgeInsets.symmetric(horizontal: 15.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                child: Column(
                                  children: [
                                    const SizedBox(height: 15),
                                    Text("Python",style: Style.headLineStyle4),
                                    const SizedBox(height: 15),
                                    Text("Get certified by global certification bodies and deepen your expertise",
                                        textAlign: TextAlign.center,
                                        style: Style.headLineStyle2),
                                  ],
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(height: 30.0),
                SizedBox(
                  height: 200,
                  child: Stack(
                    children: [
                      Container(
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: NetworkImage("https://recognizeapp.com/assets/pages/articles/amazing-award-certificates/image1.jpg"),
                                  fit: BoxFit.cover))),
                      Positioned(
                          bottom: 0,left: 20,right: 20,
                          child: SizedBox(
                            height: 100,
                            child: Card(
                              elevation: 3,
                              margin: const EdgeInsets.symmetric(horizontal: 15.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                child: Column(
                                  children: [
                                    const SizedBox(height: 15),
                                    Text("Certification Courses",style: Style.headLineStyle4),
                                    const SizedBox(height: 15),
                                    Text("Get certified by global certification bodies and deepen your expertise",
                                        textAlign: TextAlign.center,
                                        style: Style.headLineStyle2),
                                  ],
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
              ],
            )
          ],
        ),
      ),
    );
  }
}