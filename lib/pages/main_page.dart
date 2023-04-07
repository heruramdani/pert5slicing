import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Good Morning",
              style: GoogleFonts.poppins(
                  color: Color(0xff090A0A),
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
            Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage("assets/img-avatar.png")),
              ),
            ),
          ],
        ),
      );
    }

    Widget musicHeader() {
      Widget musicCard(String img, String text) {
        return Container(
          margin: EdgeInsets.only(
            right: 15,
            left: 15,
          ),
          child: Column(
            children: [
              Container(
                height: 88,
                width: 88,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(img))),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                text,
                style: GoogleFonts.poppins(
                    color: Color(0xff090A0A),
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        );
      }

      return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            musicCard("assets/img-music11.png", "chill hits"),
            musicCard("assets/img-music12.png", "Top hits"),
            musicCard("assets/img-music13.png", "Happy hits"),
            musicCard("assets/img-music14.png", "Google hits"),
          ]),
        ),
      );
    }

    Widget musicPaly() {
      Widget musicCard(String img, String text, String subtext) {
        return Container(
          width: 142,
          margin: EdgeInsets.only(left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 142,
                width: 142,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(img))),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                text,
                style: GoogleFonts.poppins(
                    color: Color(0xff090A0A),
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                subtext,
                style: GoogleFonts.poppins(
                  color: Color(0xff6C7072),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        );
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
            margin: EdgeInsets.only(left: 24, bottom: 16),
            child: Text(
              "Just For you",
              style: GoogleFonts.poppins(
                  color: Color(0xff090A0A),
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                musicCard("assets/img-music21.png", "Daily mix",
                    "jonas blue, NOTD, David guetta adn more"),
                musicCard("assets/img-music22.png", "Feelin' Myself",
                    "Ariana Grande, Doja cat, Megan Three Stallion"),
                musicCard("assets/img-music11.png", "Mood booster",
                    "jonas blue, NOTD, David guetta adn more"),
                musicCard("assets/img-music23.png", "chill hits",
                    "BTS, Dua lipa, Malone, Justin Bieber and more"),
              ]),
            ),
          ),
        ],
      );
    }

    Widget musicPopular() {
      Widget musicCard(String img, String text, String subtext) {
        return Container(
          width: 142,
          margin: EdgeInsets.only(left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 142,
                width: 142,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(img))),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                text,
                style: GoogleFonts.poppins(
                    color: Color(0xff090A0A),
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                subtext,
                style: GoogleFonts.poppins(
                  color: Color(0xff090A0A),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        );
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 16,
          ),
          Container(
            margin: EdgeInsets.only(left: 24, bottom: 16),
            child: Text(
              "Popular song",
              style: GoogleFonts.poppins(
                  color: Color(0xff090A0A),
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                musicCard("assets/img-music33.png", "Daily mix",
                    "jonas blue, NOTD, David guetta adn more"),
                musicCard("assets/img-music12.png", "Feelin' Myself",
                    "Ariana Grande, Doja cat, Megan Three Stallion"),
                musicCard("assets/img-music13.png", "Mood booster",
                    "jonas blue, NOTD, David guetta adn more"),
                musicCard("assets/img-music23.png", "chill hits",
                    "BTS, Dua lipa, Malone, Justin Bieber and more"),
              ]),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            musicHeader(),
            musicPaly(),
            musicPopular(),
          ],
        ),
      )),
    );
  }
}
