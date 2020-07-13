import 'package:flutter/material.dart';
import 'package:test_app/screens/fifth_page.dart';
import 'package:test_app/screens/sixth_page.dart';
import 'package:test_app/screens/first_page.dart';
import 'package:test_app/screens/fourth_page.dart';
import 'package:test_app/screens/third_page.dart';
import 'package:test_app/theme/theme.dart';
import 'package:test_app/utils/utils.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      drawer: Drawer(
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
                onTap: () => Utils.navigateAndReplacePage(context, FirstPage()),
                title: Text(
                  'Go Back',
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
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.darkTextColor),
        brightness: Brightness.light,
        backgroundColor: AppColors.white,
        elevation: 1,
        centerTitle: false,
        title: Text(
          'Google Arts & Culture',
          style: TextStyles.baseSemiboldStyle
              .copyWith(color: AppColors.darkTextColor),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.share,
              ),
              onPressed: () => Utils.navigatePage(context, ThirdPage())),
          IconButton(
              icon: Icon(
                Icons.search,
              ),
              onPressed: () => Utils.navigatePage(context, ThirdPage())),
        ],
      ),
      body: SizedBox.expand(
        child: Column(
          children: <Widget>[
            Container(
              width: size.width,
              height: size.height / 2 - 20,
              child: Image.asset(
                'assets/images/frida.jpg',
                alignment: Alignment.topCenter,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
                child: Container(
              padding:
                  EdgeInsets.only(left: 12, right: 12, top: 15, bottom: 30),
              color: AppColors.green,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Editorial Feature'.toUpperCase(),
                    style: TextStyles.baseStyle,
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    '11 Women Who Changed The World',
                    maxLines: 3,
                    style: TextStyles.titleStyleNormal,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Heroines who\'ve made history',
                    maxLines: 2,
                    style: TextStyles.baseStyle,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 2,
                    width: size.width / 12,
                    color: AppColors.white,
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
