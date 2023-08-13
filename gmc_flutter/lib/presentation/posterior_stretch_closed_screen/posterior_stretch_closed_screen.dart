import 'package:flutter/material.dart';
import 'package:gmc_flutter/core/app_export.dart';
import 'package:gmc_flutter/presentation/home_page_sunday_page/home_page_sunday_page.dart';
import 'package:gmc_flutter/presentation/schedule_page_tab_container_page/schedule_page_tab_container_page.dart';
import 'package:gmc_flutter/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class PosteriorStretchClosedScreen extends StatelessWidget {
  PosteriorStretchClosedScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray300,
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: mediaQueryData.size.height,
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: SizedBox(
                                  height: getVerticalSize(648),
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle27,
                                            height: getVerticalSize(648),
                                            width: getHorizontalSize(428),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      height:
                                                          getVerticalSize(42),
                                                      width: double.maxFinite,
                                                      decoration: BoxDecoration(
                                                          color: appTheme
                                                              .gray200)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowleft,
                                                      height:
                                                          getVerticalSize(25),
                                                      width:
                                                          getHorizontalSize(26),
                                                      margin:
                                                          getMargin(left: 31),
                                                      onTap: () {
                                                        onTapImgArrowleft(
                                                            context);
                                                      })
                                                ]))
                                      ]))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(right: 15),
                                        color: appTheme.blue400,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder37),
                                        child: Container(
                                            height: getSize(74),
                                            width: getSize(74),
                                            padding: getPadding(
                                                left: 23,
                                                top: 22,
                                                right: 23,
                                                bottom: 22),
                                            decoration: AppDecoration.fill6
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder37),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgVectorWhiteA700,
                                                  height: getVerticalSize(27),
                                                  width: getHorizontalSize(22),
                                                  alignment:
                                                      Alignment.bottomRight)
                                            ]))),
                                    Container(
                                        margin: getMargin(top: 41),
                                        padding: getPadding(
                                            left: 15,
                                            top: 12,
                                            right: 15,
                                            bottom: 12),
                                        decoration: AppDecoration.fill6
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL43),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  height: getVerticalSize(5),
                                                  width: getHorizontalSize(37),
                                                  decoration: BoxDecoration(
                                                      color: appTheme.whiteA700,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  2)))),
                                              Padding(
                                                  padding: getPadding(top: 16),
                                                  child: Text(
                                                      "Posterior Stretch",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .displaySmallWhiteA700)),
                                              Padding(
                                                  padding: getPadding(top: 17),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: appTheme.whiteA700,
                                                      indent:
                                                          getHorizontalSize(27),
                                                      endIndent:
                                                          getHorizontalSize(
                                                              21))),
                                              Container(
                                                  width: getHorizontalSize(351),
                                                  margin: getMargin(
                                                      left: 23,
                                                      top: 22,
                                                      right: 23),
                                                  child: Text(
                                                      "The posterior stretch is designed to reduce tension as well as build the strength of your posterior shoulder and upper back muscles ",
                                                      maxLines: 3,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: CustomTextStyles
                                                          .bodyLargeInterWhiteA700)),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 24, top: 38),
                                                      child: Text(
                                                          "Instructions ",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .headlineSmallWhiteA700))),
                                              Container(
                                                  height: getVerticalSize(344),
                                                  width: getHorizontalSize(395),
                                                  margin: getMargin(
                                                      top: 21, bottom: 21),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .topRight,
                                                            child: Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        212),
                                                                margin: getMargin(
                                                                    top: 13),
                                                                child: Text(
                                                                    "Stand straight\n\nWith your shoulders down and relaxed, reach one arm across your chest, parallel to the floor\n\nWith the other arm, place your hand on the elbow\n\nGently pull your elbow \n      in towards your chest\n\nHold the stretch\n\nRelax and repeat on opposite side",
                                                                    maxLines: 2,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: CustomTextStyles
                                                                        .titleMediumInterWhiteA700))),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: SizedBox(
                                                                height:
                                                                    getVerticalSize(
                                                                        344),
                                                                width:
                                                                    getHorizontalSize(
                                                                        204),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgGhlslides92,
                                                                          height: getVerticalSize(
                                                                              164),
                                                                          width: getHorizontalSize(
                                                                              189),
                                                                          alignment:
                                                                              Alignment.topCenter),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgGhlslides94,
                                                                          height: getSize(
                                                                              204),
                                                                          width: getSize(
                                                                              204),
                                                                          alignment:
                                                                              Alignment.bottomCenter)
                                                                    ])))
                                                      ]))
                                            ]))
                                  ])),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  height: getVerticalSize(82),
                                  width: getHorizontalSize(345),
                                  decoration:
                                      BoxDecoration(color: appTheme.whiteA700)))
                        ])))),
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
  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
