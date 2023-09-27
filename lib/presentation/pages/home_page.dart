import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone_app/data/models/artist_model.dart';
import 'package:spotify_clone_app/data/models/card_model.dart';
import 'package:spotify_clone_app/presentation/widget/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final PageController controller;
  var cardlist = [
    CardModel(
        image: "assets/images/Tiara Andini_card.png",
        name: "ArTi Untuk Cinta",
        singername: "Arsy Widianto, Tiar..."),
    CardModel(
        image: "assets/images/Feby Putri_card.png",
        name: "Runtuh",
        singername: "Feby Putri, Fiersa B..."),
    CardModel(
        image: "assets/images/Gangga_card.png",
        name: "Blue Jeans",
        singername: "GANGGA"),
    CardModel(
        image: "assets/images/Tiara Andini_card.png",
        name: "ArTi Untuk Cinta",
        singername: "Arsy Widianto, Tiar..."),
    CardModel(
        image: "assets/images/Feby Putri_card.png",
        name: "Runtuh",
        singername: "Feby Putri, Fiersa B..."),
    CardModel(
        image: "assets/images/Gangga_card.png",
        name: "Blue Jeans",
        singername: "GANGGA"),
  ];
  var artistlist = [
    ArtistModel(
        image: "assets/images/Adele_list.png",
        name: "Adele",
        subtitle: "43,877,516 monthly listeners"),
    ArtistModel(
        image: "assets/images/Tiara_list.png",
        name: "Tiara Andini",
        subtitle: "38,782,341 monthly listeners"),
    ArtistModel(
        image: "assets/images/Tulus_list.png",
        name: "Tulus",
        subtitle: "24,877,516 monthly listeners"),
  ];
  int selectedIndex = 0;
  int lastPage = 0;

  final buttons = [
    "Artist",
    "Album",
    "Podcast",
    "Genre",
  ];
  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
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
                    const SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                        height: 40,
                        width: 134,
                        child: Image.asset(
                          "assets/icons/spotify.png",
                        )),
                    const SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                        height: 25,
                        width: 25,
                        child: Image.asset(
                          "assets/icons/setting-2.png",
                        )),
                  ],
                ),
                // pagewiev
                SizedBox(
                  height: 152,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        height: 128,
                        width: 375,
                        margin: const EdgeInsets.only(left: 19),
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        decoration: BoxDecoration(
                          color: Color(ColorCustom.yellowcolor),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("assets/icons/Vector (1).png"),
                            //containerbackground
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Popular",
                                  style: TextStyle(
                                      color: Color(ColorCustom.whitecolor),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Sisa Rasa",
                                  style: TextStyle(
                                      color: Color(ColorCustom.whitecolor),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Mahalini",
                                  style: TextStyle(
                                      color: Color(ColorCustom.whitecolor),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 170,
                            ),
                            Image.asset("assets/icons/Vector.png")
                          ],
                        ),
                      ),
                      //imageMahalini
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset("assets/images/Mahalini Png 1.png"),
                          const SizedBox(
                            width: 38,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                //today text
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Today’s hits",
                      style: TextStyle(
                          color: Color(ColorCustom.whitecolor),
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                //listviewcard
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SizedBox(
                    height: 170,
                    width: MediaQuery.of(context).size.width,

                    ///listview
                    child: ListView.separated(
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 16,
                      ),
                      itemCount: cardlist.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final card = cardlist[index];
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 128,
                              width: 128,
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: DecorationImage(
                                          image: AssetImage(card.image!),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  // playbutton
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 100, top: 100),
                                    child: Image.asset(
                                      "assets/icons/play.png",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(card.name!),
                            Text(card.singername!),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                // pageviewcontroller
                PreferredSize(
                  preferredSize: Size(MediaQuery.sizeOf(context).width, 60),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 23, top: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (int i = 0; i < buttons.length; i++)
                          GestureDetector(
                            onTap: () {
                              selectedIndex = i;
                              setState(() {});
                              controller.jumpToPage(i);
                            },
                            child: Column(
                              children: [
                                Text(
                                  buttons[i],
                                  style: (selectedIndex == i)
                                      ? TextStyle(
                                          color: Color(ColorCustom.whitecolor),
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 26,
                                        )
                                      : TextStyle(
                                          color:
                                              Color(ColorCustom.gardientcolor),
                                          fontSize: 26),
                                ),
                                Container(
                                  height: 4,
                                  decoration: BoxDecoration(
                                      color: (selectedIndex == i)
                                          ? Color(ColorCustom.greencolor)
                                          : Colors.transparent,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      )),
                                  width: buttons[i].length * 3,
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: MediaQuery.of(context).size.width,
                ),
                //pageview
                Expanded(
                  child: PageView(
                    controller: controller,
                    children: [
                      Container(
                          padding: const EdgeInsets.only(left: 8),
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                            itemCount: artistlist.length,
                            itemBuilder: (context, index) {
                              final artist = artistlist[index];
                              return ListTile(
                                  title: Text(
                                    artist.name!,
                                    style: TextStyle(
                                        color: Color(ColorCustom.whitecolor),
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  leading: Container(
                                    height: 55,
                                    width: 55,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        image: DecorationImage(
                                            image: AssetImage(artist.image!),
                                            fit: BoxFit.cover)),
                                  ),
                                  subtitle: Text(
                                    artist.subtitle!,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        color: Color(ColorCustom.whitecolor),
                                        fontStyle: FontStyle.normal),
                                  ),
                                  trailing:
                                      Image.asset("assets/icons/Vector.png"));
                            },
                          )),
                      Container(
                        color: Colors.yellow,
                        width: MediaQuery.of(context).size.width,
                      ),
                      Container(
                        color: Colors.green,
                        width: MediaQuery.of(context).size.width,
                      ),
                      Container(
                        color: Colors.red,
                        width: MediaQuery.of(context).size.width,
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
