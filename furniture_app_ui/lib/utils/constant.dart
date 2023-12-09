import '../icon/custome_icon.dart';
import 'package:flutter/material.dart';

//COLORS
const Color profileInfoBackground = Color(0xFF3775FD);
const Color profileInfoCategoriesBackground = Color(0xFFF6F5F8);
const Color profileInfoAddress = Color(0xFF8D7AEE);
const Color profileInfoPrivacy = Color(0xFFF369B7);
const Color profileInfoGeneral = Color(0xFFFFC85B);
const Color profileInfoNotification = Color(0xFF5DD1D3);
const Color profileItemColor = Color(0xFFC4C5C9);
const String imagePath = 'assets/image';

const String devMausam =
    'images/profile.jpg';

const Color furnitureCateDisableColor = Color(0xFF939BA9);
const List lampsImage = [
  {'image': 'images/a.jpg'},
  {'image': 'images/b.jpg'},
  {'image': 'images/c.jpg'},
  {'image': 'images/d.jpg'},
  {'image': 'images/e.jpg'},
  {'image': 'images/f.jpg'},
];
List<ProfileMenu> lampList = [
  ProfileMenu(title: 'Landscape', subTitle: '384'),
  ProfileMenu(title: 'Discus Pendant', subTitle: '274'),
  ProfileMenu(title: 'Mushroom Lamp', subTitle: '374'),
  ProfileMenu(title: 'Titanic Pendant', subTitle: '562'),
  ProfileMenu(title: 'Torn Lighting', subTitle: '105'),
  ProfileMenu(title: 'Abduction Pendant', subTitle: '365'),
];
const List profileItems = [
  {'count': '846', 'name': 'Collect'},
  {'count': '51', 'name': 'Attention'},
  {'count': '267', 'name': 'Track'},
  {'count': '39', 'name': 'Coupons'},
];

List<Catg> listProfileCategories = [
  Catg(name: 'Wallet', icon: Icons.wallet, number: 0),
  Catg(name: 'Delivery', icon: Icons.delivery_dining, number: 0),
  Catg(name: 'Message', icon: Icons.message, number: 2),
  Catg(name: 'Service', icon: Icons.miscellaneous_services_sharp, number: 0),
];

List<FurnitureCatg> furnitureCategoriesList = [
  FurnitureCatg(icon: Icons.desktop_windows, elivation: true),
  FurnitureCatg(icon: Icons.account_balance_wallet, elivation: false),
  FurnitureCatg(icon: Icons.security, elivation: false),
  FurnitureCatg(icon: Icons.chat, elivation: false),
  FurnitureCatg(icon: Icons.money, elivation: false),
];

List<ProfileMenu> profileMenuList = [
  ProfileMenu(
    title: 'Address',
    subTitle: 'Ensure your harvesting address',
    iconColor: profileInfoAddress,
    icon: Icons.location_on,
  ),
  ProfileMenu(
    title: 'Privacy',
    subTitle: 'System permission change',
    iconColor: profileInfoPrivacy,
    icon: Icons.lock,
  ),
  ProfileMenu(
    title: 'General',
    subTitle: 'Basic functional settings',
    iconColor: profileInfoGeneral,
    icon: Icons.layers,
  ),
  ProfileMenu(
    title: 'Notification',
    subTitle: 'Take over the news in time',
    iconColor: profileInfoNotification,
    icon: Icons.notifications,
  ),
];

class ProfileMenu {
  String? title;
  String? subTitle;
  IconData? icon;
  Color? iconColor;

  ProfileMenu({this.icon, this.title, this.iconColor, this.subTitle});
}

class Catg {
  String? name;
  IconData? icon;
  int? number;

  Catg({this.icon, this.name, this.number});
}

class FurnitureCatg {
  IconData? icon;
  bool? elivation;

  FurnitureCatg({this.icon, this.elivation});
}
