import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone_app/presentation/widget/color.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            //gardient
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.black45,
                ],
              )),
            ),
            //text
            Column(
              children: [
                //appbar
                Row(
                  children: [
                    SizedBox(
                      width: 50.w,
                    ),
                    Container(
                      height: 33.5,
                      width: 33.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              width: 2,
                              color: Color(ColorCustom.gardientcolor))),
                      child: Icon(
                        CupertinoIcons.back,
                        size: 18,
                        color: Color(
                          ColorCustom.whitecolor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 75.0.w,
                    ),
                    const ImageIcon(
                      AssetImage(
                        "assets/icons/spotify.png",
                      ),
                      size: 140,
                      color: Colors.green,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 390,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      //#signupfree
                      Container(
                        height: 48,
                        width: 330,
                        decoration: BoxDecoration(
                          color: Color(ColorCustom.greencolor),
                          borderRadius: BorderRadius.circular(80),
                        ),
                        child: Center(
                          child: Text(
                            "Sign up free",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 22.sp,
                                fontStyle: FontStyle.normal,
                                color: Color(ColorCustom.balckcolor)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      //#phonenumber
                      Container(
                        height: 48,
                        width: 330,
                        decoration: BoxDecoration(
                            color: Color(ColorCustom.balckcolor),
                            borderRadius: BorderRadius.circular(80),
                            border: Border.all(
                                width: 2,
                                color: Color(ColorCustom.whitecolor))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 23,
                            ),
                            Image.asset("assets/icons/phone.png"),
                            const SizedBox(
                              width: 17,
                            ),
                            Text(
                              "Continue with phone number",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 21.sp,
                                  fontStyle: FontStyle.normal,
                                  color: Color(ColorCustom.whitecolor)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      //#google
                      Container(
                        height: 48,
                        width: 330,
                        decoration: BoxDecoration(
                          color: Color(ColorCustom.balckcolor),
                          borderRadius: BorderRadius.circular(80),
                          border: Border.all(
                              width: 2, color: Color(ColorCustom.whitecolor)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Image.asset("assets/icons/google.png"),
                            const SizedBox(
                              width: 30,
                            ),
                            Text(
                              "Continue with Google",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22.sp,
                                  fontStyle: FontStyle.normal,
                                  color: Color(ColorCustom.whitecolor)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      //#facebook
                      Container(
                        height: 48,
                        width: 330,
                        decoration: BoxDecoration(
                          color: Color(ColorCustom.balckcolor),
                          borderRadius: BorderRadius.circular(80),
                          border: Border.all(
                              width: 2, color: Color(ColorCustom.whitecolor)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Image.asset("assets/icons/facebook.png"),
                            const SizedBox(
                              width: 22,
                            ),
                            Text(
                              "Continue with facebook",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22.sp,
                                  fontStyle: FontStyle.normal,
                                  color: Color(ColorCustom.whitecolor)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Log In",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 19,
                            fontStyle: FontStyle.normal,
                            color: Color(ColorCustom.whitecolor)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
