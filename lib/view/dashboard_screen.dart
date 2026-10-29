import 'package:flutter/material.dart';
import 'package:to_do_app/constants/app_colors.dart';
import 'package:to_do_app/view/home_page.dart';
import 'package:to_do_app/view/profile_page.dart';

class DashboradScreenUi extends StatefulWidget {
  const DashboradScreenUi({super.key});

  @override
  State<DashboradScreenUi> createState() => _DashboradScreenUiState();
}

class _DashboradScreenUiState extends State<DashboradScreenUi> {
  List<Widget> myScreenList = [HomePageUi(), ProfileScreenUi()];
  int myScreenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: myScreenList[myScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: myScreenIndex,
        onTap: (index) {
          // print("Bottom Navbar index: $index");
          myScreenIndex = index;
          setState(() {
            
          });
        },
        backgroundColor: AppColors.appbarColor,
        selectedItemColor: AppColors.primaryText,
        unselectedItemColor: AppColors.secondaryText,
        selectedLabelStyle: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
