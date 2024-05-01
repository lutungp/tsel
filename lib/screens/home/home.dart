import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:telkomsel/screens/home/components/card_info_home_1.dart';
import 'package:telkomsel/screens/home/components/card_info_home_2.dart';
import 'package:telkomsel/screens/home/components/recomened_card.dart';
import 'package:telkomsel/screens/home/components/whats_new_card.dart';
import 'package:telkomsel/themes.dart';

import 'dart:ui';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List cards = [
    CardInfoHome1(),
    CardInfoHome2(),
  ];

  int currentIndex = 0;

  Widget header() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Hi James',
                style: boldText15.copyWith(color: whiteColor),
              ),
              Spacer(),
              Icon(
                Icons.qr_code_rounded,
                color: whiteColor,
                size: 28,
              ),
              SizedBox(
                width: 12,
              ),
              Image.asset(
                'assets/icons/icon-email.png',
                width: 32,
              ),
              SizedBox(
                width: 12,
              ),
              Image.asset(
                'assets/icons/icon-help.png',
                width: 20,
              ),
            ],
          ),
          SizedBox(
            height: 3,
          ),
          Row(
            children: [
              Text(
                '082212345678',
                style: boldText15.copyWith(color: whiteColor),
              ),
              SizedBox(
                width: 7,
              ),
              Image.asset(
                'assets/icons/icon-add.png',
                width: 14,
              ),
            ],
          ),
          Row(
            children: [
              headerContent('assets/icons/icon-love.png', '19 Poin'),
              headerContent('assets/icons/icon-star.png', 'Daily Check In'),
            ],
          ),
        ],
      ),
    );
  }

  Container headerContent(String icon, String text) {
    return Container(
      margin: EdgeInsets.only(top: 15, right: 10),
      padding: EdgeInsets.fromLTRB(8, 5, 2, 5),
      decoration: BoxDecoration(
        color: darkRedColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            icon,
            width: 10,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: boldText13.copyWith(color: whiteColor),
          ),
          Icon(
            Icons.chevron_right_rounded,
            color: whiteColor,
          )
        ],
      ),
    );
  }

  Container indicator(int index) {
    return Container(
      width: currentIndex == index ? 18 : 5,
      margin: EdgeInsets.symmetric(horizontal: 2),
      height: 5,
      decoration: BoxDecoration(
        color: currentIndex == index ? whiteColor : whiteColor.withOpacity(0.7),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }

  Widget cardInfo() {
    int index = -1;
    return Column(
      children: [
        CarouselSlider(
          items: cards
              .map<Widget>((card) => Container(
                    child: card,
                  ))
              .toList(),
          options: CarouselOptions(
              viewportFraction: 1,
              height: 333,
              enableInfiniteScroll: false,
              initialPage: 0,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              }),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: cards.map((e) {
            index += 1;
            return indicator(index);
          }).toList(),
        )
      ],
    );
  }

  Column recomendForYou() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            left: 16,
            top: 45,
            right: 16,
          ),
          child: Row(
            children: [
              Text(
                'Recomended for you',
                style: nunitoExtraBoldText18.copyWith(color: primaryTextColor),
              ),
              Spacer(),
              Text(
                'See All',
                style: regulerText12.copyWith(color: blueColor),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              RecomendedCard(
                title: 'Kuota keterangan unli ...',
                time: '29 Jun 2021 13:08:07',
                price: 'Rp 4,200',
              ),
              SizedBox(
                width: 16,
              ),
              RecomendedCard(
                title: 'Kuota keterangan bela ...',
                time: '29 Jun 2021 13:05:07',
                price: 'Rp 5,500',
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget whatsNew() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
            bottom: 14,
          ),
          child: Text(
            'What`s New ?',
            style: nunitoExtraBoldText18.copyWith(color: primaryTextColor),
          ),
        ),
        SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              WhatsNewCard(
                image: 'assets/images/video-subscription.png',
                text: 'Package',
                title: 'Video Digital Subsciption',
              ),
              SizedBox(
                width: 16,
              ),
              WhatsNewCard(
                image: 'assets/images/poin-image.png',
                text: 'Poin',
                title: 'Undi-undi Hepi',
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget content() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24),
        ),
      ),
      child: Column(
        children: [
          recomendForYou(),
          whatsNew(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.topRight,
          stops: [0.1, 0.65, 1],
          colors: [redColor, redColor, yellowColor],
        ),
      ),
      child: ScrollConfiguration(
        behavior: MyBehaviour(),
        child: ListView(
          children: [
            header(),
            cardInfo(),
            content(),
          ],
        ),
      ),
    ));
  }
}

class MyBehaviour extends ScrollBehavior {
  @override
  Widget builViewportChrome(
      BuildContext contextm, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
