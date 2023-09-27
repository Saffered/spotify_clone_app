import 'package:flutter/material.dart';
import 'package:spotify_clone_app/data/models/today_model.dart';
import 'package:spotify_clone_app/presentation/widget/color.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var todaylist = [
    TodayModel(
        image: "assets/images/Ran.png",
        name: "Dekat Di Hati",
        singername: "RAN",
        tralingicon: false),
    TodayModel(
        image: "assets/images/Taylor Swift.png",
        name: "Bigger Than The Whole...",
        singername: "Taylor Swift",
        tralingicon: true),
    TodayModel(
        image: "assets/images/Hivi.png",
        name: "Remaja",
        singername: "Hivi!",
        tralingicon: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //#appBar
      appBar: AppBar(
        backgroundColor: Color(ColorCustom.gardientcolor),
        centerTitle: true,
        title: Text(
          "Profil",
          style: TextStyle(
              color: Color(ColorCustom.whitecolor),
              fontSize: 24,
              fontWeight: FontWeight.w700),
        ),
        actions: [
          SizedBox(
              height: 25,
              width: 25,
              child: Image.asset(
                "assets/icons/more.png",
              )),
          const SizedBox(
            width: 20,
          ),
        ],
      ),

      body: SafeArea(
        child: Column(
          children: [
            //#profilImage
            Expanded(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(ColorCustom.gardientcolor),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(64),
                      bottomRight: Radius.circular(64)),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/profil.png"))),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Fauzian Ahmad",
                      style: TextStyle(
                          color: Color(ColorCustom.whitecolor),
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "fauzianahmad04@gmail.com",
                      style: TextStyle(
                          color: Color(ColorCustom.whitecolor),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Followers",
                              style: TextStyle(
                                  color: Color(ColorCustom.whitecolor),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "129",
                              style: TextStyle(
                                  color: Color(ColorCustom.whitecolor),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Following",
                              style: TextStyle(
                                  color: Color(ColorCustom.whitecolor),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "238",
                              style: TextStyle(
                                  color: Color(ColorCustom.whitecolor),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/profile.png"),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Find friend",
                        style: TextStyle(
                            color: Color(ColorCustom.whitecolor),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/directbox.png"),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Share",
                        style: TextStyle(
                            color: Color(ColorCustom.whitecolor),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //#shortText
                  Padding(
                    padding: const EdgeInsets.only(right: 30, left: 32),
                    child: Text(
                      "Mostly played",
                      style: TextStyle(
                          color: Color(ColorCustom.whitecolor),
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ListView.builder(
                        itemCount: todaylist.length,
                        itemBuilder: (context, index) {
                          final listone = todaylist[index];
                          return ListTile(
                            subtitle: Text(
                              listone.singername!,
                              style: TextStyle(
                                  color: Color(ColorCustom.whitecolor),
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400),
                            ),
                            leading: Container(
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image: AssetImage(listone.image!),
                                  )),
                            ),
                            title: Text(
                              listone.name!,
                              style: TextStyle(
                                  color: Color(ColorCustom.whitecolor),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            trailing: listone.tralingicon!
                                ? const Icon(
                                    Icons.more_vert,
                                    color: Colors.white,
                                  )
                                : const Icon(null),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
