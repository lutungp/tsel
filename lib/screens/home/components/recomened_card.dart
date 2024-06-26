import 'package:flutter/material.dart';
import 'package:telkomsel/themes.dart';

class RecomendedCard extends StatelessWidget {
  const RecomendedCard({
    super.key,
    required this.title,
    required this.time,
    required this.price,
  });

  final String title;
  final String time;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20, bottom: 28),
          height: 131,
          width: 284,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(14),
            ),
            color: whiteColor,
            boxShadow: [
              BoxShadow(
                color: greyColor,
                offset: Offset(0, 1),
                blurRadius: 1,
              ),
            ],
          ),
          child: Stack(
            children: [
              ClipPath(
                clipper: BackGroundClipper(),
                child: Container(
                  padding: EdgeInsets.only(
                    left: 11,
                    top: 2,
                  ),
                  height: 18,
                  width: 90,
                  decoration: BoxDecoration(
                    color: blueColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(14),
                    ),
                  ),
                  child: Text(
                    'Buy it again',
                    style: mediumText9.copyWith(color: whiteColor),
                  ),
                ),
              ),
              Positioned(
                top: 27,
                left: 18,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: mediumText12.copyWith(
                        color: primaryTextColor,
                        letterSpacing: 0.3,
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Text(
                      time,
                      style: mediumText15.copyWith(color: primaryTextColor),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      price,
                      style: boldText14.copyWith(color: redColor),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 7,
                top: 7,
                child: Image.asset(
                  'assets/images/icon-box-play.png',
                  width: 45,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class BackGroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width - 20, size.height);
    path.quadraticBezierTo(size.width - 10, size.height, size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
