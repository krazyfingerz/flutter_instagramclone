import 'package:flutter/material.dart';

import 'pages/homepage.dart';
import 'pages/searchpage.dart';
import 'pages/profilepage.dart';

const mobileBackgroundColor = Color.fromRGBO(0, 0, 0, 1);
const webBackgroundColor = Color.fromRGBO(18, 18, 18, 1);
const mobileSearchColor = Color.fromRGBO(38, 38, 38, 1);
const blueColor = Color.fromRGBO(0, 149, 246, 1);
const primaryColor = Colors.white;
const secondaryColor = Colors.grey;

const webScreenSize = 600;

List<Widget> pages = [
  const HomePage(),
  const SearchPage(),
  const ReelsPage(),
  const ShopPage(),
  ProfilePage(
    uid: FirebaseAuth.instance.currentUser!.uid,
  ),
];