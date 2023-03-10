import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/components/components.dart';
import 'package:project/components/custom_color.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff9CDFB5),
                Color(0xffddf3e3),
                Color(0xffFFFFFF),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 60.0,
              left: 20.0,
              right: 20.0
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Row(
                  children:
                  [
                    Icon(Icons.arrow_back_ios_new),
                    SizedBox(
                      width: 14.0,
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                          fontSize: 27.0
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      width: 31.0,
                      height: 30.0,
                      child: Image.asset(
                          'assets/images/profile/check.png',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:
                    [
                      Stack(
                        children:
                        [
                          Container(
                            width: 125.0,
                            height: 125.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(65.0),
                              child: Image.asset(
                                'assets/images/profile/eliza.png',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 82.0,
                              left: 84.0,
                            ),
                            child: Container(
                              width: 42.0,
                              height: 42.0,
                              decoration: BoxDecoration(
                               // color: CustomColor.green1,
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xffbbe3c7),
                                    Color(0xffc4eed7),
                                  ],
                                ),
                                border: Border.all(
                                  color: Colors.transparent
                                ),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child:Icon(
                                Icons.camera_alt,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                          'Elizabeth Alpy',
                        style: TextStyle(
                          fontSize: 27.0,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          TextButton(
                            onPressed: ()
                            {

                            },
                            child: Text(
                              'Edit profile',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: CustomColor.deepGreen,
                            ),
                           ),
                          ),
                          Icon(
                              Icons.edit,
                            color: CustomColor.deepGreen,
                            size: 20.0,
                          ),
                        ],
                      ),
                      CustomInputField(
                          icon: Icons.person,
                          label: 'User name',
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      CustomInputField(
                          icon: Icons.lock_open_rounded,
                          label: 'Password',
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      CustomInputField(
                          icon: Icons.email_outlined,
                          label: 'Email',
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      CustomInputField(
                          icon: Icons.phone_android_rounded,
                          label: 'Phone number',
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
