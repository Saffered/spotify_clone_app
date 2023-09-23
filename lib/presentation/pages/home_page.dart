import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone_app/presentation/widget/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                SizedBox(
                  height: 152,
                  width: 364,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        height: 128,
                        width: 364,
                        decoration: BoxDecoration(
                          color: Color(ColorCustom.yellowcolor),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/Mahalini Png 1.png"),
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
