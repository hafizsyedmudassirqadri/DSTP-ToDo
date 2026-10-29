import 'package:flutter/material.dart';
import 'package:to_do_app/constants/app_colors.dart';
import 'package:to_do_app/view/login_page.dart';

class SplashScreenUi extends StatefulWidget {
  const new({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {
  @override
  void initState() {
    onInitCalled();
    super.initState();
  }

  Future<void> onInitCalled() async {
    await Future.delayed(Duration(seconds: 4));
    var route = MaterialPageRoute(builder: (_) => LoginScreenUi());
    Navigator.pushReplacement(context, route);
  }

  @override
  Widget build(BuildContext context) {
      final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.task_alt_rounded,
                  color: AppColors.taskCardBorderColor,
                  size: screenheight * 0.13,
                ),
                SizedBox(width: screenwidth * 0.02),
                const Text(
                  "DSTP-TODO",
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            CircularProgressIndicator(
              color: Colors.amberAccent.withValues(alpha: 0.7),
              backgroundColor: AppColors.taskCardBorderColor,
            ),
          ],
        ),
      ),
    );
  }
}
