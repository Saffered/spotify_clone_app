import 'package:flutter/material.dart';
import 'package:spotify_clone_app/data/models/card_model.dart';

class ListViewCustom extends StatefulWidget {
  const ListViewCustom({super.key});

  @override
  State<ListViewCustom> createState() => _ListViewCustomState();
}

class _ListViewCustomState extends State<ListViewCustom> {
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
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                        padding: const EdgeInsets.only(left: 100, top: 100),
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
    );
  }
}
