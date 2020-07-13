import 'package:flutter/material.dart';
import 'package:test_app/screens/fifth_page.dart';
import 'package:test_app/screens/first_page.dart';
import 'package:test_app/screens/fourth_page.dart';
import 'package:test_app/screens/second_page.dart';
import 'package:test_app/screens/third_page.dart';
import 'package:test_app/theme/theme.dart';
import 'package:test_app/utils/utils.dart';

class PersonItem {
  final String image;
  final String name;
  final String position;
  final int connections;
  const PersonItem({this.image, this.name, this.position, this.connections});
}

PersonItem person = PersonItem(
    image: 'assets/images/nabilla.png',
    name: 'Nabilla Andriana',
    position: 'Business Analyst at Delitte',
    connections: 7);

final List<Tab> tabs = <Tab>[
  Tab(text: 'All'),
  Tab(text: 'A-Z'),
  Tab(text: 'Map'),
];

class SixthPage extends StatefulWidget {
  @override
  _SixthPageState createState() => _SixthPageState();
}

class _SixthPageState extends State<SixthPage>
    with SingleTickerProviderStateMixin {
  Size size;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.darkTextColor),
        brightness: Brightness.light,
        backgroundColor: AppColors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Google Arts & Culture',
          style: TextStyles.baseSemiboldStyle
              .copyWith(color: AppColors.darkTextColor, fontSize: 17),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
              ),
              onPressed: () => Utils.pop(context)),
        ],
      ),
      body: SizedBox.expand(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              height: size.height / 6.5,
              alignment: Alignment.center,
              child: Text(
                'Collections',
                style: TextStyles.titleMediumStyle.copyWith(
                    color: AppColors.darkTextColor,
                    fontSize: 32,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 30,
              width: size.width,
              child: TabBar(
                  indicatorColor: Colors.blue,
                  isScrollable: false,
                  labelColor: AppColors.darkTextColor,
                  unselectedLabelColor:
                      AppColors.darkTextColor.withOpacity(0.7),
                  controller: _tabController,
                  tabs: tabs),
            ),
            Expanded(
                child: TabBarView(controller: _tabController, children: [
              SizedBox.expand(
                  child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: 0.57),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                itemBuilder: (_, index) => Container(
                  height: 800,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: AppColors.greyMediumText.withOpacity(0.2))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 110,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              height: 60,
                              color: AppColors.greyLight,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: ClipOval(
                                child: Image.asset(
                                  person.image,
                                  fit: BoxFit.cover,
                                  height: 90,
                                  width: 90,
                                ),
                              ),
                            ),
                            Positioned(
                                top: 4,
                                right: 4,
                                child: ClipOval(
                                  child: Material(
                                    color: AppColors.darkTextColor
                                        .withOpacity(0.7),
                                    child: InkWell(
                                      // inkwell color
                                      child: SizedBox(
                                          width: 22,
                                          height: 22,
                                          child: Icon(
                                            Icons.close,
                                            size: 18,
                                          )),
                                      onTap: () => Utils.pop(context),
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        person.name,
                        style: TextStyles.baseSemiboldStyle.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        person.position,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: TextStyles.smallBaseStyle.copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppColors.greyMediumText.withOpacity(0.7)),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Text(
                        '∞ ${person.connections} mutual connections',
                        style: TextStyles.smallBaseStyle.copyWith(
                            fontSize: 11,
                            color: AppColors.greyMediumText.withOpacity(0.7)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      OutlineButton(
                        onPressed: () => Utils.pop(context),
                        child: Text(
                          'CONNECT',
                          style: TextStyles.baseSemiboldStyle
                              .copyWith(color: AppColors.greenReadMore),
                        ),
                        borderSide: BorderSide(
                            color: AppColors.greenReadMore, width: 2),
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                itemCount: 6,
              )),
              SizedBox.expand(
                child: Center(
                  child: Text(
                    'A-Z',
                    style: TextStyles.titleStyle
                        .copyWith(color: AppColors.darkTextColor),
                  ),
                ),
              ),
              SizedBox.expand(
                child: Center(
                  child: Text(
                    'Map',
                    style: TextStyles.titleStyle
                        .copyWith(color: AppColors.darkTextColor),
                  ),
                ),
              ),
            ]))
          ],
        ),
      ),
    );
  }
}