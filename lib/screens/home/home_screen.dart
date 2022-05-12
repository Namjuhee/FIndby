import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/hobby.dart';
import 'components/hobby_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFC0BBED),
        title: Row(
          children: [
            const Text('내 취미'),
            const SizedBox(width: 4.0),
          ],
        ),
        actions: [
          IconButton(icon: const Icon(CupertinoIcons.search), onPressed: () {}),
          IconButton(
              icon: const Icon(CupertinoIcons.list_dash), onPressed: () {}),
          IconButton(icon: const Icon(CupertinoIcons.bell), onPressed: () {})
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(thickness: 0.5, height: 0.5, color: Colors.grey),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: ListView.separated(
          separatorBuilder: (context, index) => const Divider(
            height: 0,
            indent: 16,
            endIndent: 16,
            color: Colors.grey,
          ),
          itemBuilder: (context, index) {
            return HobbyItem(
              hobby: hobbyList[index],
            );
          },
          itemCount: hobbyList.length,
        ),
      )
    );
  }
}