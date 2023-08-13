import 'package:flutter/material.dart';
import 'package:gmc_flutter/core/app_export.dart';
import 'package:gmc_flutter/presentation/activities_page/activities_page.dart';
import 'package:gmc_flutter/presentation/home_page_sunday_page/home_page_sunday_page.dart';
import 'package:gmc_flutter/presentation/schedule_page_tab_container_page/schedule_page_tab_container_page.dart';
import 'package:gmc_flutter/widgets/app_bar/appbar_image.dart';
import 'package:gmc_flutter/widgets/app_bar/custom_app_bar.dart';
import 'package:gmc_flutter/widgets/custom_bottom_bar.dart';

class ActivitiesTabContainerScreen extends StatefulWidget {
  const ActivitiesTabContainerScreen({Key? key}) : super(key: key);

  @override
  ActivitiesTabContainerScreenState createState() =>
      ActivitiesTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class ActivitiesTabContainerScreenState
    extends State<ActivitiesTabContainerScreen> with TickerProviderStateMixin {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(96),
                leadingWidth: 54,
                leading: AppbarImage(
                    height: getVerticalSize(19),
                    width: getHorizontalSize(20),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 34, top: 16, bottom: 20),
                    onTap: () {
                      onTapArrowleft(context);
                    }),
                centerTitle: true,
                title: Text("Activities",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.headlineLargeArimoBlack90030)),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(46),
                          width: getHorizontalSize(394),
                          margin: getMargin(top: 17),
                          child: TabBar(
                              controller: tabviewController,
                              labelColor: appTheme.blue400,
                              labelStyle: TextStyle(),
                              unselectedLabelColor:
                                  appTheme.black900.withOpacity(0.24),
                              unselectedLabelStyle: TextStyle(),
                              indicator: BoxDecoration(
                                  color: appTheme.blue400.withOpacity(0.09),
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(20))),
                              tabs: [
                                Tab(
                                    child: Text("All",
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: Text("Easy",
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: Text("< 5 min",
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: Text("Completed",
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: Text("Incomplete",
                                        overflow: TextOverflow.ellipsis))
                              ])),
                      SizedBox(
                          height: getVerticalSize(660),
                          child: TabBarView(
                              controller: tabviewController,
                              children: [
                                ActivitiesPage(),
                                ActivitiesPage(),
                                ActivitiesPage(),
                                ActivitiesPage(),
                                ActivitiesPage()
                              ]))
                    ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Homeblue400:
        return AppRoutes.homePageSundayPage;
      case BottomBarEnum.Settings:
        return AppRoutes.schedulePageTabContainerPage;
      case BottomBarEnum.Bibarchart:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePageSundayPage:
        return HomePageSundayPage();
      case AppRoutes.schedulePageTabContainerPage:
        return SchedulePageTabContainerPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
