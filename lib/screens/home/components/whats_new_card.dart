import 'package:flutter/material.dart';
import 'package:telkomsel/themes.dart';

class WhatsNewCard extends StatelessWidget {
  const WhatsNewCard({
    super.key,
    required this.image,
    required this.text,
    required this.title,
  });

  final String image;
  final String text;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          image,
          width: 281,
          height: 164,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
          decoration: BoxDecoration(
            color: lightPinkColor,
            borderRadius: BorderRadius.circular(19),
          ),
          child: Text(
            text,
            style: regulerText10.copyWith(color: blackColor),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: boldText14.copyWith(color: primaryTextColor),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 35),
          child: Text(
            'See All',
            style: regulerText14.copyWith(color: blueColor),
          ),
        )
      ],
    );
  }
}
