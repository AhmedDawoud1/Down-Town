import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project/modules/child_app/home_Screen/home_screen.dart';
import 'package:project/modules/home/home_screen.dart';
import '../../components/components.dart';

class AccessScreen extends StatelessWidget {
  const AccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                height: 300,
                child: Stack(
                  fit: StackFit.expand,
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: (Radius.circular(65)),
                          bottomRight: (Radius.circular(65)),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.2),
                              spreadRadius: 3,
                              blurRadius: 15)
                        ],
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          // stops: [.38,.6],
                          colors: [
                            Color(0xff9CDFB5),
                            Color(0xffEEF8F2),
                            Color(0xffE3FBE8),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -10,
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        width: 170,
                        height: 170,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(-4, -4),
                                spreadRadius: -7,
                                blurRadius: 8),
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, 0),
                                spreadRadius: -7,
                                blurRadius: 8)
                          ],
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Image.asset(
                          'assets/images/logo.png',
                          width: 145,
                          height: 120,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const AppName(),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Helps your child learn and integrate with society',
                style: TextStyle(
                  color: Color(0xff88889D),
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Please , Choose Your Access...',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 60,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){

                        },
                        child: Container(
                          height: 300.0,
                          width: 150.0,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey[300]!,
                                  offset: const Offset(4, 4),
                                  blurRadius: 15,
                                  spreadRadius: 1),
                              const BoxShadow(
                                  color: Color.fromARGB(255, 215, 248, 227),
                                  offset: Offset(-4, -4),
                                  blurRadius: 8,
                                  spreadRadius: 1)
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Image(
                            image: AssetImage(
                              'assets/images/access/parent.png',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(builder:
                                (context)=> ChildHomeScreen()
                            ),
                          );
                        },
                        child: Container(
                          height: 300.0,
                          width: 150.0,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            // boxShadow: [
                            //   BoxShadow(
                            //       color: Colors.grey[300]!,
                            //       offset: const Offset(4, 4),
                            //       blurRadius: 15,
                            //       spreadRadius: 1),
                            //   BoxShadow(
                            //       color: Colors.grey[100]!,
                            //       offset: const Offset(-4, -4),
                            //       blurRadius: 15,
                            //       spreadRadius: 1)
                            // ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Image(
                            image: AssetImage(
                              'assets/images/access/child.png',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
