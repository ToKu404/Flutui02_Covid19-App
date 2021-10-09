import 'package:covid19app/constant.dart';
import 'package:covid19app/widgets/my_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MyHeader(
              image: "assets/icons/coronadr.svg",
              topText: "Get to Know",
              bottomText: "About Covid-19",
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Symptons",
                    style: kTitleTextStyle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const SymptomCard(
                        image: "assets/images/headache.png",
                        title: "Headache",
                        isActived: true,
                      ),
                      const SymptomCard(
                        image: "assets/images/caugh.png",
                        title: "Caugh",
                      ),
                      const SymptomCard(
                        image: "assets/images/fever.png",
                        title: "Fever",
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Prevention",
                    style: kTitleTextStyle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const PreventCard(
                    image: "assets/images/wear_mask.png",
                    title: "Wear face mask",
                    text:
                        "Since the start of coronavirus outbreak some plave have fully embrassing wearing mask",
                  ),
                  const PreventCard(
                    image: "assets/images/wash_hands.png",
                    title: "Wash your hands",
                    text:
                        "Since the start of coronavirus outbreak some plave have fully embrassing wearing mask",
                  ),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PreventCard extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  const PreventCard({
    Key key,
    this.image,
    this.title,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: SizedBox(
        height: 156,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
              height: 136,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 8),
                      blurRadius: 24,
                      color: kShadowColor,
                    )
                  ]),
            ),
            Image.asset(image),
            Positioned(
                left: 130,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  height: 136,
                  width: MediaQuery.of(context).size.width - 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: kTitleTextStyle.copyWith(fontSize: 14),
                      ),
                      Text(
                        text,
                        style: const TextStyle(fontSize: 10),
                      ),
                      Align(
                          alignment: Alignment.topRight,
                          child: SvgPicture.asset("assets/icons/forward.svg"))
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class SymptomCard extends StatelessWidget {
  final String image;
  final String title;
  final bool isActived;
  const SymptomCard({
    Key key,
    this.image,
    this.title,
    this.isActived = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          isActived
              ? BoxShadow(
                  offset: const Offset(0, 15),
                  color: kActiveShadowColor,
                  blurRadius: 20)
              : BoxShadow(
                  offset: const Offset(0, 3),
                  color: kShadowColor,
                  blurRadius: 6),
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            image,
            height: 80,
          ),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
