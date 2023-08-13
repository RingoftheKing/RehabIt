import 'package:flutter/material.dart';
import 'package:gmc_flutter/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHomeBlue400,
      activeIcon: ImageConstant.imgHomeBlue400,
      type: BottomBarEnum.Homeblue400,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSettings,
      activeIcon: ImageConstant.imgSettings,
      type: BottomBarEnum.Settings,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgBibarchart,
      activeIcon: ImageConstant.imgBibarchart,
      type: BottomBarEnum.Bibarchart,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            26,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              -4,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              svgPath: bottomMenuList[index].icon,
              height: getVerticalSize(
                36,
              ),
              width: getHorizontalSize(
                31,
              ),
              color: appTheme.black900,
            ),
            activeIcon: CustomImageView(
              svgPath: bottomMenuList[index].activeIcon,
              height: getSize(
                42,
              ),
              width: getSize(
                42,
              ),
              color: appTheme.blue400,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Homeblue400,
  Settings,
  Bibarchart,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
