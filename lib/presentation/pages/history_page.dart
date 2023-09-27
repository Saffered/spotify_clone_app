import 'package:flutter/material.dart';
import 'package:spotify_clone_app/data/models/today_model.dart';
import 'package:spotify_clone_app/data/models/yesterday_model.dart';
import 'package:spotify_clone_app/presentation/widget/color.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  var todaylist = [
    TodayModel(
        image: "assets/images/Ran.png",
        name: "Dekat Di Hati",
        singername: "RAN",
        tralingicon: false),
    TodayModel(
        image: "assets/images/Hivi.png",
        name: "Remaja",
        singername: "Hivi!",
        tralingicon: true),
  ];
  var yesterdaylist = [
    YesterdayModel(
        image: "assets/images/Taylor Swift.png",
        name: "Bigger Than The Whole...",
        singername: "Taylor Swift",
        tralingicon: true),
    YesterdayModel(
        image: "assets/images/Harry Style.png",
        name: "Matilda",
        singername: "Harry Styles",
        tralingicon: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "History",
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
                "assets/icons/setting-2.png",
              )),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 32),
          child: Column(
            children: [
              //expented
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //#shortText
                    Text(
                      "History",
                      style: TextStyle(
                          color: Color(ColorCustom.whitecolor),
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/images/happy_cloud.jpg"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Happiers",
                              style: TextStyle(
                                  color: Color(ColorCustom.whitecolor),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Playlist",
                              style: TextStyle(
                                  color: Color(ColorCustom.whitecolor),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Expanded(
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 23),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "See all 28 played",
                            style: TextStyle(
                                color: Color(ColorCustom.whitecolor),
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          const Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )
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
                      padding: const EdgeInsets.only(right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Yesterday",
                            style: TextStyle(
                                color: Color(ColorCustom.whitecolor),
                                fontSize: 24,
                                fontWeight: FontWeight.w700),
                          ),
                          Image.asset(
                            "assets/icons/Vector (2).png",
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/images/sadness_image.jpg"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sadness",
                              style: TextStyle(
                                  color: Color(ColorCustom.whitecolor),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Playlist",
                              style: TextStyle(
                                  color: Color(ColorCustom.whitecolor),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: todaylist.length,
                        itemBuilder: (context, index) {
                          final listone = yesterdaylist[index];
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
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "See all 28 played",
                            style: TextStyle(
                                color: Color(ColorCustom.whitecolor),
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          Image.asset(
                            "assets/icons/Vector (2).png",
                            color: Colors.white,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
