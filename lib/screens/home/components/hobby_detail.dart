import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../models/hobby.dart';
import '../../../theme.dart';

class HobbyDetail extends StatelessWidget {
  final Hobby hobby;

  const HobbyDetail({this.hobby});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(hobby.title, style: textTheme().bodyText1),
          const SizedBox(height: 4.0),
          Text(
            '${numberFormat(hobby.price)}원',
            style: textTheme().headline2,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(width: 8.0),
              Visibility(
                visible: hobby.starCount > 0,
                child: _buildIcons(
                  hobby.starCount,
                  CupertinoIcons.star,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  String numberFormat(String price) {
    final formatter = NumberFormat('#,###');
    return formatter.format(int.parse(price));
  }

  Widget _buildIcons(int count, IconData iconData) {
    return Row(
      children: [
        Icon(iconData, size: 14.0),
        const SizedBox(width: 4.0),
        Text('$count'),
      ],
    );
  }
}