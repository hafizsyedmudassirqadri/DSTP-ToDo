import 'package:flutter/material.dart';
import 'package:to_do_app/constants/app_colors.dart';

class ProfileScreenUi extends StatefulWidget {
  const ProfileScreenUi({super.key});

  @override
  State<ProfileScreenUi> createState() => _ProfileScreenUiState();
}

class _ProfileScreenUiState extends State<ProfileScreenUi> {
  
  @override
  Widget build(BuildContext context) {
    // print(name.split(" "));
    // var splitName = name.split(",");
    // print(splitName);
    // print(splitName[0][0]);
    // print(splitName[1][0]);
    final screenh = MediaQuery.of(context).size.height;
    final screenw = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.appbarColor,
        title: Text(
          "Profile",
          style: TextStyle(
            color: AppColors.primaryText,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.7,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(17),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 37,
              backgroundColor: AppColors.fabColor,
              child: Text(
                "MH",
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 31,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // SizedBox(height: screenh * 0.02),
            Text(
              "Mudassir Hassan",
              style: TextStyle(
                color: AppColors.primaryText,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Grade 8 . Section B",
              style: TextStyle(
                color: AppColors.secondaryText,
                fontSize: 13,
                fontWeight: FontWeight.w100,
              ),
            ),

            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenw * 0.07,
                      vertical: screenh * 0.005,
                    ),
                    margin: EdgeInsets.symmetric(horizontal: screenw * 0.01),
                    decoration: BoxDecoration(
                      color: AppColors.completedText.withValues(alpha: 0.5),
                      border: BoxBorder.all(
                        color: AppColors.fabColor,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "12",
                          style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          "Quizes",
                          style: TextStyle(
                            color: AppColors.secondaryText,
                            fontSize: 11,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenw * 0.03,
                      vertical: screenh * 0.005,
                    ),
                    margin: EdgeInsets.symmetric(horizontal: screenw * 0.01),
                    decoration: BoxDecoration(
                      color: AppColors.completedText.withValues(alpha: 0.5),
                      border: BoxBorder.all(
                        color: AppColors.fabColor,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "80%",
                          style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          "Avg Score",
                          style: TextStyle(
                            color: AppColors.secondaryText,
                            fontSize: 11,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenw * 0.03,
                      vertical: screenh * 0.005,
                    ),
                    margin: EdgeInsets.symmetric(horizontal: screenw * 0.01),
                    decoration: BoxDecoration(
                      color: AppColors.completedText.withValues(alpha: 0.5),
                      border: BoxBorder.all(
                        color: AppColors.fabColor,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "#5",
                          style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          "Class Rank",
                          style: TextStyle(
                            color: AppColors.secondaryText,
                            fontSize: 11,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: screenw * 0.03,
                vertical: screenh * 0.005,
              ),
              decoration: BoxDecoration(
                color: AppColors.completedText.withValues(alpha: 0.5),
                border: BoxBorder.all(color: AppColors.fabColor, width: 2),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.email,
                        size: 21,
                        color: AppColors.secondaryText,
                      ),
                      Text(
                        "Email",
                        style: TextStyle(
                          color: AppColors.secondaryText,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "mudassir313@gmail.com",
                        style: TextStyle(
                          color: AppColors.secondaryText,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Divider(color: AppColors.secondaryText, thickness: 2.0),
                  SizedBox(height: screenh * 0.002),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.school,
                        size: 21,
                        color: AppColors.secondaryText,
                      ),
                      Text(
                        "School",
                        style: TextStyle(
                          color: AppColors.secondaryText,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "The Arqam School",
                        style: TextStyle(
                          color: AppColors.secondaryText,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Divider(color: AppColors.secondaryText, thickness: 2.0),
                  SizedBox(height: screenh * 0.002),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.calendar_today,
                        size: 21,
                        color: AppColors.secondaryText,
                      ),
                      Text(
                        "Joined",
                        style: TextStyle(
                          color: AppColors.secondaryText,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Sept 2026",
                        style: TextStyle(
                          color: AppColors.secondaryText,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(
                horizontal: screenw * 0.03,
                vertical: screenh * 0.005,
              ),
              decoration: BoxDecoration(
                color: AppColors.completedText.withValues(alpha: 0.5),
                border: BoxBorder.all(color: AppColors.fabColor, width: 2),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Actions",
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 13,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: screenh * 0.002),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.notifications,
                        size: 21,
                        color: AppColors.secondaryText,
                      ),
                      Text(
                        "Notifications",
                        style: TextStyle(
                          color: AppColors.secondaryText,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.chevron_right,
                        size: 22,
                        color: AppColors.secondaryText,
                      ),
                    ],
                  ),
                  SizedBox(height: screenh * 0.002),
                  Row(
                    children: [
                      Icon(
                        Icons.exit_to_app,
                        size: 22,
                        color: Colors.redAccent,
                      ),
                      SizedBox(height: screenh * 0.001),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Log Out",
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenh * 0.002),
                ],
              ),
            ),
            SizedBox(height: screenh * 0.02),
          ],
        ),
      ),
    );
  }
}
