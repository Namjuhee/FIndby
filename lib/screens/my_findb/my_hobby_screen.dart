import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/icon_menu.dart';
import 'components/card_icon_menu.dart';
import 'components/my_hobby_header.dart';

class MyHobbyScreen extends StatelessWidget {
  const MyHobbyScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFC0BBED),
        title: const Text('나의 취미'),
        actions: [
          IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(thickness: 0.5, height: 0.5, color: Colors.grey),
        ),
      ),
      body: ListView(
        children: [
          const MyHobbyHeader(),
          const SizedBox(height: 8.0),
          CardIconMenu(iconMenuList: iconMenu1),
          const SizedBox(height: 8.0),
          CardIconMenu(iconMenuList: iconMenu2),
          const SizedBox(height: 8.0),
          CardIconMenu(iconMenuList: iconMenu3)
        ],
      ),
    );
  }
}