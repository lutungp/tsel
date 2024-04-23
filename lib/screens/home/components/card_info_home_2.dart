import 'package:flutter/material.dart';
import 'package:telkomsel/themes.dart';

class CardInfoHome2 extends StatelessWidget {
  const CardInfoHome2({super.key});

  Widget listCardInfo(String icon, String title, IconData? iconHelp,
      String subtitle, String text) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Image.asset(
            icon,
            width: 36,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: 11),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: boldText13.copyWith(color: primaryTextColor),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(
                        iconHelp,
                        size: 19,
                      ),
                      Spacer(),
                      Text(
                        text,
                        style: semiBoldText13.copyWith(color: primaryTextColor),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: primaryTextColor,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        subtitle,
                        style: mediumText10.copyWith(color: primaryTextColor),
                      )
                    ],
                  )
                ],
              ),
            ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 18, left: 16, right: 16),
      padding: EdgeInsets.only(left: 17, top: 29, right: 12),
      height: 333,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          listCardInfo('assets/icons/icon-phone.png', 'Voice', null,
              'You have no quota', 'Not yet purchased'),
          SizedBox(
            height: 15,
          ),
          listCardInfo('assets/icons/icon-sms.png', 'SMS', null,
              'You have no quota', 'Not yet purchased'),
          SizedBox(
            height: 15,
          ),
          listCardInfo(
              'assets/icons/icon-wallet.png',
              'Monetary',
              Icons.help_outline_rounded,
              'You have no monetary balance',
              'Not yet purchased'),
        ],
      ),
    );
  }
}
