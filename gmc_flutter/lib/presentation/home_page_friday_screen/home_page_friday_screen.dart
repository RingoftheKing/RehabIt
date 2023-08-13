import '../home_page_friday_screen/widgets/slidablelistscr_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:gmc_flutter/core/app_export.dart';
import 'package:gmc_flutter/presentation/home_page_sunday_page/home_page_sunday_page.dart';
import 'package:gmc_flutter/presentation/schedule_page_tab_container_page/schedule_page_tab_container_page.dart';
import 'package:gmc_flutter/widgets/app_bar/appbar_image.dart';
import 'package:gmc_flutter/widgets/app_bar/custom_app_bar.dart';
import 'package:gmc_flutter/widgets/custom_bottom_bar.dart';
import 'package:gmc_flutter/widgets/custom_elevated_button.dart';
import 'package:gmc_flutter/widgets/custom_floating_button.dart';
import 'package:gmc_flutter/widgets/custom_icon_button.dart';
import 'package:gmc_flutter/widgets/custom_text_form_field.dart';
import 'package:percent_indicator/percent_indicator.dart';

// ignore_for_file: must_be_immutable
class HomePageFridayScreen extends StatelessWidget {
  HomePageFridayScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController exploretabController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(101),
                title: Padding(
                    padding: getPadding(left: 27, top: 41, bottom: 15),
                    child: Text("Home ",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.displaySmallBlack900)),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(7),
                      width: getHorizontalSize(27),
                      svgPath: ImageConstant.imgSignal,
                      margin:
                          getMargin(left: 20, top: 63, right: 20, bottom: 31))
                ],
                styleType: Style.bgFill),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 14, right: 8),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomTextFormField(
                                  controller: exploretabController,
                                  margin: getMargin(left: 2, right: 5),
                                  contentPadding: getPadding(
                                      top: 14, right: 30, bottom: 14),
                                  textStyle: theme.textTheme.bodyLarge!,
                                  hintText: "Explore",
                                  hintStyle: theme.textTheme.bodyLarge!,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 17,
                                          top: 12,
                                          right: 10,
                                          bottom: 12),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgSearch)),
                                  prefixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(49)),
                                  filled: true,
                                  fillColor:
                                      appTheme.black900.withOpacity(0.04)),
                              Padding(
                                  padding: getPadding(top: 19),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 3),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(right: 10),
                                                      child: Text("M",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .titleMedium)),
                                                  // CustomImageView(
                                                  //     imagePath:
                                                  //         ImageConstant.img81,
                                                  //     height: getSize(51),
                                                  //     width: getSize(51),
                                                  //     margin:
                                                  //         getMargin(top: 10)),
                                                  CircularPercentIndicator(
                                                    radius: 20,
                                                    lineWidth: 7,
                                                    percent: 0.58,
                                                    progressColor: Colors.blueAccent,
                                                    backgroundColor: Colors.blueAccent.shade100,
                                                  )
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 3),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(right: 17),
                                                      child: Text("T",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .titleMedium)),
                                                  CircularPercentIndicator(
                                                    radius: 20,
                                                    animation: true,
                                                    animationDuration: 2,
                                                    lineWidth: 7,
                                                    percent: 0.70,
                                                    progressColor: Colors.blueAccent,
                                                    backgroundColor: Colors.blueAccent.shade100,
                                                  )
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 3),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("W",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: theme.textTheme
                                                          .titleMedium),
                                                  CircularPercentIndicator(
                                                    radius: 20,
                                                    animation: true,
                                                    animationDuration: 2,
                                                    lineWidth: 7,
                                                    percent: 0.60,
                                                    progressColor: Colors.blueAccent,
                                                    backgroundColor: Colors.blueAccent.shade100,
                                                  )
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 3),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(right: 17),
                                                      child: Text("T",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .titleMedium)),
                                                  CircularPercentIndicator(
                                                    radius: 20,
                                                    animation: true,
                                                    animationDuration: 2,
                                                    lineWidth: 7,
                                                    percent: 1,
                                                    progressColor: Colors.blueAccent,
                                                    backgroundColor: Colors.blueAccent.shade100,
                                                  )
                                                ])),
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width: getSize(27),
                                                  margin: getMargin(right: 13),
                                                  padding: getPadding(
                                                      left: 8,
                                                      top: 2,
                                                      right: 8,
                                                      bottom: 2),
                                                  decoration: AppDecoration
                                                      .txtFill
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtRoundedBorder13),
                                                  child: Text("F",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .titleMediumWhiteA700)),
                                              CircularPercentIndicator(
                                                radius: 20,
                                                animation: true,
                                                animationDuration: 2,
                                                lineWidth: 7,
                                                percent: 0.11,
                                                progressColor: Colors.blueAccent,
                                                backgroundColor: Colors.blueAccent.shade100,
                                              )
                                            ]),
                                        Padding(
                                            padding: getPadding(top: 3),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 21),
                                                      child: Text("S",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .titleMedium)),
                                                  CircularPercentIndicator(
                                                    radius: 20,
                                                    animation: true,
                                                    animationDuration: 2,
                                                    lineWidth: 7,
                                                    percent: 0.30,
                                                    progressColor: Colors.blueAccent,
                                                    backgroundColor: Colors.blueAccent.shade100,
                                                  )
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 3),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("S",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: theme.textTheme
                                                          .titleMedium),
                                                  CircularPercentIndicator(
                                                    radius: 20,
                                                    animation: true,
                                                    animationDuration: 2,
                                                    lineWidth: 7,
                                                    percent: 0.50,
                                                    progressColor: Colors.blueAccent,
                                                    backgroundColor: Colors.blueAccent.shade100,
                                                  )
                                                ]))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 85, top: 15, right: 14),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                height: getVerticalSize(250),
                                                width: getHorizontalSize(232),
                                                margin: getMargin(top: 7),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    children: [
                                                      Align(
                                                        alignment: Alignment.center,
                                                        child: CircularPercentIndicator(
                                                          radius: 102,
                                                          animation: true,
                                                          animationDuration: 2,
                                                          lineWidth: 20,
                                                          percent: 0.58,
                                                          center: new Text("58%"),
                                                          progressColor: Colors.blueAccent,
                                                          backgroundColor: Colors.blueAccent.shade100
                                                        )
                                                      ),
                                                      Align(
                                                        // TODO: Tree fixed (with brute force)
                                                          alignment: Alignment
                                                              .center,
                                                          child: Card(
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              elevation: 0,
                                                              margin: EdgeInsets
                                                                  .all(0),
                                                              color: appTheme
                                                                  .whiteA700,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder90),
                                                              child: Container(
                                                                  height:
                                                                      getSize(
                                                                          202),
                                                                  width: getSize(
                                                                      181),
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              7,
                                                                          top:
                                                                              8,
                                                                          right:
                                                                              7,
                                                                          bottom:
                                                                              8),
                                                                  decoration: AppDecoration
                                                                      .fill
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder90),
                                                                  child: CircularPercentIndicator(
                                                                    radius: 76,
                                                                    animation: true,
                                                                    animationDuration: 2,
                                                                    lineWidth: 20,
                                                                    percent: 0.14,
                                                                    center: new Text("14%"),
                                                                    progressColor: Colors.deepOrangeAccent,
                                                                    backgroundColor: Colors.deepOrangeAccent.shade100
                                                                  )))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      bottom:
                                                                          70),))
                                                    ])),
                                            CustomImageView(
                                              // TODO: the small circle tooltip should have a POPUP when pressed
                                                svgPath:
                                                    ImageConstant.imgQuestion,
                                                height: getSize(15),
                                                width: getSize(15),
                                                margin: getMargin(
                                                    left: 60, bottom: 223))
                                          ]))),
                              Padding(
                                  padding: getPadding(left: 65, top: 29),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getSize(14),
                                            width: getSize(14),
                                            margin:
                                                getMargin(top: 5, bottom: 6),
                                            decoration: BoxDecoration(
                                                color: appTheme.blue400,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(7)))),
                                        Padding(
                                            padding:
                                                getPadding(left: 9, top: 2),
                                            child: Text("Completed",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.titleLarge)),
                                        Container(
                                            height: getSize(14),
                                            width: getSize(14),
                                            margin: getMargin(
                                                left: 39, top: 5, bottom: 6),
                                            decoration: BoxDecoration(
                                                color: appTheme.orangeA700,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(7)))),
                                        Padding(
                                            padding:
                                                getPadding(left: 10, bottom: 2),
                                            child: Text("Strain",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .titleLargeOrangeA700))
                                      ])),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(left: 14, top: 28),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Activities",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .headlineMedium29),
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgQuestionBlack900,
                                                height: getSize(15),
                                                width: getSize(15),
                                                margin: getMargin(
                                                    left: 9,
                                                    top: 10,
                                                    bottom: 8)),
                                            Spacer(),
                                            CustomElevatedButton(
                                                text: "Start All",
                                                margin: getMargin(bottom: 2),
                                                buttonStyle: CustomButtonStyles
                                                    .fillBlue400
                                                    .copyWith(
                                                        fixedSize: MaterialStateProperty
                                                            .all<Size>(Size(
                                                                getHorizontalSize(
                                                                    82),
                                                                getVerticalSize(
                                                                    31)))),
                                                buttonTextStyle:
                                                    CustomTextStyles
                                                        .titleSmallBlue400)
                                          ]))),
                              Padding(
                                  padding:
                                      getPadding(left: 2, top: 23, right: 11),
                                  child: ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(12));
                                      },
                                      itemCount: 4,
                                      itemBuilder: (context, index) {
                                        return SlidablelistscrItemWidget(
                                            onTapBtnVector: () {
                                          onTapBtnVector(context);
                                        });
                                      })),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: getVerticalSize(93),
                                      width: getHorizontalSize(382),
                                      margin: getMargin(top: 11),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomIconButton(
                                              // TODO: When pressed, switch page
                                              onTap: () => {},
                                                height: 45,
                                                width: 45,
                                                margin: getMargin(
                                                    top: 14, right: 12),
                                                padding: getPadding(all: 13),
                                                alignment: Alignment.topRight,
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgVectorWhiteA700)),
                                            Align(
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                    height: getVerticalSize(93),
                                                    width:
                                                        getHorizontalSize(382),
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .topCenter,
                                                              child: Container(
                                                                  margin:
                                                                      getMargin(
                                                                          bottom:
                                                                              20),
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              2,
                                                                          top:
                                                                              6,
                                                                          right:
                                                                              2,
                                                                          bottom:
                                                                              6),
                                                                  decoration: AppDecoration
                                                                      .fill1
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder14),
                                                                  child: Row(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgScreenshot20230721,
                                                                            height: getVerticalSize(59),
                                                                            width: getHorizontalSize(75),
                                                                            margin: getMargin(bottom: 2)),
                                                                        CustomImageView(
                                                                            svgPath: ImageConstant
                                                                                .imgClock,
                                                                            height: getSize(
                                                                                13),
                                                                            width: getSize(
                                                                                13),
                                                                            margin: getMargin(
                                                                                left: 5,
                                                                                top: 39,
                                                                                bottom: 7)),
                                                                        Spacer(
                                                                            flex:
                                                                                23),
                                                                        CustomImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgTicket,
                                                                            height: getVerticalSize(12),
                                                                            width: getHorizontalSize(21),
                                                                            margin: getMargin(top: 40, bottom: 9)),
                                                                        Spacer(
                                                                            flex:
                                                                                76)
                                                                      ]))),
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              child: SizedBox(
                                                                  height:
                                                                      getVerticalSize(
                                                                          78),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          209),
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft,
                                                                      children: [
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            child: SizedBox(width: getHorizontalSize(209), child: Text("Cross Body Stretch", maxLines: null, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleMediumBlack900_1))),
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.centerLeft,
                                                                            child: Padding(padding: getPadding(left: 18), child: Text("5 min  |", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.labelLarge)))
                                                                      ]))),
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomRight,
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          right:
                                                                              35,
                                                                          bottom:
                                                                              32),
                                                                  child: Text(
                                                                      "Hard",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: CustomTextStyles
                                                                          .labelLarge12)))
                                                        ])))
                                          ]))),
                              Container(
                                  height: getVerticalSize(49),
                                  width: getHorizontalSize(234),
                                  margin: getMargin(left: 14, top: 8),
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                                width: getHorizontalSize(234),
                                                child: Text("Appointments",
                                                    maxLines: null,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme.textTheme
                                                        .headlineMedium))),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgQuestion,
                                            height: getSize(15),
                                            width: getSize(15),
                                            alignment: Alignment.topRight,
                                            margin:
                                                getMargin(top: 10, right: 19))
                                      ]))
                            ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            }),
            floatingActionButton: CustomFloatingButton(
                height: 45,
                width: 45,
                backgroundColor: appTheme.blue400,
                child: CustomImageView(
                    svgPath: ImageConstant.imgPhplayfill,
                    height: getVerticalSize(22.5),
                    width: getHorizontalSize(22.5)))));
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

  /// Navigates to the posteriorStretchClosedScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the posteriorStretchClosedScreen.
  onTapBtnVector(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.posteriorStretchClosedScreen);
  }
}
