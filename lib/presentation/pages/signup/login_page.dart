import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone_app/presentation/widget/color.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            //text
            Column(
              children: [
                //appbar
                Row(
                  children: [
                    SizedBox(
                      width: 40.w,
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

                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //login
                      Text(
                        "Log In",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 19,
                            fontStyle: FontStyle.normal,
                            color: Color(ColorCustom.whitecolor)),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      //little text
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "If You Need Any Support",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Click Here",
                            style: TextStyle(
                                color: Color(ColorCustom.greencolor),
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      //#phonenumber
                      SizedBox(
                        height: 72,
                        width: 348,
                        child: TextField(
                          autofocus: true,
                          decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 25),
                              hintText: "Enter Username Or Email",
                              alignLabelWithHint: true,
                              hintStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                  color: Color(
                                    ColorCustom.gardientcolor,
                                  )),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(ColorCustom.gardientcolor)),
                                  borderRadius: BorderRadius.circular(24))),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      //#password
                      SizedBox(
                        height: 72,
                        width: 348,
                        child: TextField(
                          autofocus: true,
                          decoration: InputDecoration(
                              suffixIcon:
                                  const Icon(Icons.remove_red_eye_outlined),
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 25),
                              hintText: "Password",
                              alignLabelWithHint: true,
                              hintStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                  color: Color(
                                    ColorCustom.gardientcolor,
                                  )),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(ColorCustom.gardientcolor)),
                                  borderRadius: BorderRadius.circular(24))),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //#forgotpassword
                      Padding(
                        padding: const EdgeInsets.only(right: 245),
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: Color(
                                ColorCustom.whitecolor,
                              ),
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      //#signupfree
                      Container(
                        height: 72,
                        width: 348,
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
                        height: 34,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 150,
                            height: 1,
                            color: Color(ColorCustom.whitecolor),
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          const Text("Or"),
                          const SizedBox(
                            width: 13,
                          ),
                          Container(
                            width: 150,
                            height: 1,
                            color: Color(ColorCustom.whitecolor),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 34,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons/facebook_button.png"),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset("assets/icons/google_button.png"),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset("assets/icons/apple.png"),
                        ],
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyle(
                                color: Color(
                                  ColorCustom.whitecolor,
                                ),
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Register",
                            style: TextStyle(
                                color: Color(ColorCustom.yellowcolor)),
                          ),
                        ],
                      ),
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
