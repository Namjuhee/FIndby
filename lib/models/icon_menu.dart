import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconMenu {
  final String title;
  final IconData iconData;

  IconMenu({this.title, this.iconData});
}

final List<IconMenu> iconMenu1 = [
  IconMenu(title: '내 동네 설정', iconData: FontAwesomeIcons.mapMarkerAlt),
  IconMenu(title: '동네 인증하기', iconData: FontAwesomeIcons.compressArrowsAlt),
  IconMenu(title: '키워드 알림', iconData: FontAwesomeIcons.tag),
];

final List<IconMenu> iconMenu2 = [
  IconMenu(title: '키워드 수정', iconData: FontAwesomeIcons.edit)
];

final List<IconMenu> iconMenu3 = [
  IconMenu(title: '회원 탈퇴', iconData: FontAwesomeIcons.xbox),
  IconMenu(title: '앱 공지', iconData: FontAwesomeIcons.bullhorn)
];