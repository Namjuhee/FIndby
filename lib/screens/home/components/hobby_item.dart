import 'package:flutter/material.dart';

import '../../../models/hobby.dart';
import 'hobby_detail.dart';

class HobbyItem extends StatelessWidget {
  final Hobby hobby;
  HobbyItem({this.hobby});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.0,
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              hobby.urlToImage,
              width: 115,
              height: 115,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16.0),
          HobbyDetail(hobby: hobby)
        ],
      ),
    );
  }
}
