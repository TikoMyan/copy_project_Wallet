import 'package:first_project/helpers/colors.dart';
import 'package:first_project/pages/bon_item_page.dart';
import 'package:first_project/pages/main_item_page.dart';
import 'package:flutter/material.dart';
import 'package:first_project/pages/appBar/app_bar_main.dart';
import 'package:first_project/pages/appBar/appBar_bon_item.dart';

import 'appBar/appBar_bancingTab.dart';
import 'appBar/appBar_qrCode.dart';
import 'qrCode_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar:
      AppBar(
        backgroundColor: AppColors.bgColor,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: getAppBar(),
        ),
      ),
      body: body(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.appOrange,
        unselectedItemColor: Colors.grey,
        elevation: 7,
        onTap: (int index) {
          setState(() {
            currentTab = index;
          });
        },
        currentIndex: currentTab,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Գլխավոր'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: 'BON'),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: 'QR կոդ'),
          BottomNavigationBarItem(
              icon: Icon(Icons.museum_sharp), label: 'Բանկինգ'),
        ],
      ),
    );
  }

  Widget body() {
    return getBody();
  }

  Widget getBody() {
    switch (currentTab) {
      case 0:
        return const MainPageWidget();
      case 1:
        return const BonPageWidget();
        case 2:
        return  QrCodePage();
      default:
        return Container();
    }
  }
  Widget appBar(){
    return getAppBar();
  }
  Widget getAppBar(){
    switch (currentTab) {
      case 0:
        return  appBarHome();
      case 1:
        return  appBarBon();
        case 2:
        return  appBarqrCode();
        case 3:
        return appBarBancing();
      default:
        return appBarHome();
    }
  }
}
