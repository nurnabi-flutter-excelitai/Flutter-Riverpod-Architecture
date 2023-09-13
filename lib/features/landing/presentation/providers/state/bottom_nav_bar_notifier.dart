


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/features/authentication/presentation/screens/login_screen.dart';
import 'package:flutter_project/features/counter/presentation/screens/counter_page.dart';
import 'package:flutter_project/features/landing/presentation/screens/landing_page.dart';
import 'package:flutter_project/features/splash/presentation/screens/splash_screen.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../../../dashboard/presentation/screens/dashboard_screen.dart';

class BottomNavigationBarProvider extends StateNotifier<int> {

  BottomNavigationBarProvider() : super(0);


  void setPage(int index){
    state = index;
  }

  Widget bottomNavigationBar(BuildContext context, bool isLanding) {
    return Container(
      height: 56,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffE1E1E1), width: 1),
        color: const Color(0xffFFFFFF),
      ),

      child: BottomNavigationBar(
        elevation: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 24,
              height: 24,
              child: Icon(Icons.countertops, color: state == 0 ? Color(0xff073B74) : Color(0xff9C9C9C)),
            ),
            label: 'Count',
          ),

          BottomNavigationBarItem(
            icon: SizedBox(
              width: 24,
              height: 24,
              child: Icon(Icons.history_edu_rounded, color: state == 1 ? Color(0xff073B74) : Color(0xff9C9C9C)),
            ),
            label: 'Jokes',
          ),

          BottomNavigationBarItem(
            icon: SizedBox(
              width: 24,
              height: 24,
              child: Icon(Icons.production_quantity_limits, color: state == 2 ? Color(0xff073B74) : Color(0xff9C9C9C)),
            ),
            label: 'Products',
          ),

        ],
        backgroundColor: Color(0xFFFFFFFF),
        currentIndex: state,
        selectedItemColor: Color(0xff073B74),
        unselectedItemColor: Color(0xff9C9C9C),
        selectedFontSize: 12,
        unselectedFontSize: 12,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: TextStyle(fontSize: 12, color: Color(0xff9C9C9C)),
        selectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xff073B74)),
        onTap: (index) {
          onItemTapped(index, context, isLanding);
        },
      ),
    );
  }




  Widget? getWidget(int index, BuildContext context) {

    print('Clicked..................: $index');
    print('Clicked..................: $index');
    print('Clicked..................: $index');
    print('Clicked..................: $index');
    print('Clicked..................: $index');

    if (index == 0) {

      return CounterApp();
    }

    if (index == 1) {
      print('Index 1 is clicked');
      return DashboardScreen();;
    }

    if (index == 2) {
      return DashboardScreen();
    }

    state = index;
    return null;

  }


  String getTitleName(BuildContext context) {
    if (state == 0) {
      return 'Counter';
    }
    if (state == 1) {
      return 'Jokes';
    }

    return 'Products';
  }

  void onItemTapped(int index, BuildContext context, bool isLanding) {
    //updateSelectedIndex(index);
    setPage(index);
    if (!isLanding) {
      Navigator.pushNamedAndRemoveUntil(context, LandingPage.routeName, (route) => false);
    }

  }


}