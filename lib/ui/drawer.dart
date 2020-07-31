import 'package:flutter/material.dart';
import 'package:test_app/screens/fifth_page.dart';
import 'package:test_app/screens/first_page.dart';
import 'package:test_app/screens/fourth_page.dart';
import 'package:test_app/screens/second_page.dart';
import 'package:test_app/screens/seventh_page.dart';
import 'package:test_app/screens/sixth_page.dart';
import 'package:test_app/screens/third_page.dart';
import 'package:test_app/theme/theme.dart';
import 'package:test_app/utils/utils.dart';

class BaseDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: AppColors.white,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            ListTile(
              enabled: true,
              leading: Icon(
                Icons.arrow_back,
                color: AppColors.darkTextColor,
              ),
              onTap: () => Utils.navigatePage(context, FirstPage()),
              title: Text(
                'First Page',
                style: TextStyles.baseTextStyle,
              ),
            ),
            ListTile(
              enabled: true,
              leading: Icon(
                Icons.arrow_back,
                color: AppColors.darkTextColor,
              ),
              onTap: () => Utils.navigatePage(context, SecondPage()),
              title: Text(
                'Second Page',
                style: TextStyles.baseTextStyle,
              ),
            ),
            ListTile(
              enabled: true,
              leading: Icon(
                Icons.arrow_back,
                color: AppColors.darkTextColor,
              ),
              onTap: () => Utils.navigatePage(context, ThirdPage()),
              title: Text(
                'Third Page',
                style: TextStyles.baseTextStyle,
              ),
            ),
            ListTile(
              enabled: true,
              leading: Icon(
                Icons.arrow_back,
                color: AppColors.darkTextColor,
              ),
              onTap: () => Utils.navigatePage(context, FourthPage()),
              title: Text(
                'Fourth Page',
                style: TextStyles.baseTextStyle,
              ),
            ),
            ListTile(
              enabled: true,
              leading: Icon(
                Icons.arrow_back,
                color: AppColors.darkTextColor,
              ),
              onTap: () => Utils.navigatePage(context, FifthPage()),
              title: Text(
                'Fifth Page',
                style: TextStyles.baseTextStyle,
              ),
            ),
            ListTile(
              enabled: true,
              leading: Icon(
                Icons.arrow_back,
                color: AppColors.darkTextColor,
              ),
              onTap: () => Utils.navigatePage(context, SixthPage()),
              title: Text(
                'Sixth Page',
                style: TextStyles.baseTextStyle,
              ),
            ),
            ListTile(
              enabled: true,
              leading: Icon(
                Icons.arrow_back,
                color: AppColors.darkTextColor,
              ),
              onTap: () => Utils.navigatePage(context, SeventhPage()),
              title: Text(
                'Seventh Page',
                style: TextStyles.baseTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}