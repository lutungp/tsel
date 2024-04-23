import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:telkomsel/themes.dart';

class CardInfoHome1 extends StatelessWidget {
  const CardInfoHome1({super.key});

  Widget infoCardList_2() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: circularPercent(0.9),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Multimedia',
                      style: boldText13.copyWith(color: primaryTextColor),
                    ),
                    Spacer(),
                    Text(
                      '9.2 GB ',
                      style: semiBoldText13.copyWith(color: primaryTextColor),
                    ),
                    Text(
                      '/ 10 GB',
                      style: mediumText13.copyWith(color: primaryTextColor),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: primaryTextColor,
                    )
                  ],
                ),
                Row(children: [
                  Image.asset(
                    'assets/icons/icon-warning.png',
                    width: 13,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '9.2 GB / 10 GB is expiring tomorrow',
                    style: mediumText10.copyWith(
                        color: brownColor, letterSpacing: 0.2),
                  )
                ])
              ],
            ))
      ],
    );
  }

  Widget infoCardList_1() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: circularPercent(0),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Internet',
                      style: boldText13.copyWith(color: primaryTextColor),
                    ),
                    Spacer(),
                    Text(
                      'Not Yet Purchased',
                      style: mediumText13.copyWith(color: primaryTextColor),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: primaryTextColor,
                    )
                  ],
                ),
                Text(
                  'You have no quota',
                  style: regulerText10.copyWith(color: primaryTextColor),
                )
              ],
            ))
      ],
    );
  }

  CircularPercentIndicator circularPercent(double percent) {
    return CircularPercentIndicator(
      radius: 20.0,
      lineWidth: 7.0,
      animation: true,
      percent: percent,
      backgroundColor: lightGreyCOlor,
      progressColor: orangeColor,
      circularStrokeCap: CircularStrokeCap.round,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 18, left: 16, right: 16),
      height: 333,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: lightGreyCOlor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 17, top: 27, bottom: 21),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rp. 0',
                      style: extraBoldText26.copyWith(color: primaryTextColor),
                    ),
                    Text(
                      'Active until 22 Sep 2021',
                      style: mediumText12.copyWith(color: darkGreyColor),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 7,
                            horizontal: 19,
                          ),
                          decoration: BoxDecoration(
                            color: redButtonColor,
                            borderRadius: BorderRadius.circular(16.5),
                          ),
                          child: Text(
                            'Buy Package',
                            style: mediumText12.copyWith(color: whiteColor),
                          ),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Text(
                          'Top Up',
                          style: mediumText12.copyWith(color: lightBlueColor),
                        ),
                        SizedBox(
                          width: 19,
                        ),
                        Text(
                          'Send Gift',
                          style: mediumText12.copyWith(color: lightBlueColor),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 25,
                horizontal: 17,
              ),
              child: Column(
                children: [
                  infoCardList_1(),
                  Spacer(),
                  infoCardList_2(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
