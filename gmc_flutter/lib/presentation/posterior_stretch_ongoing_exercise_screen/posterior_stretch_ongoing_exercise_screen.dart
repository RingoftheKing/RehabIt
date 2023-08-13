import 'package:flutter/material.dart';
import 'package:gmc_flutter/core/app_export.dart';
import 'package:gmc_flutter/widgets/app_bar/appbar_image.dart';
import 'package:gmc_flutter/widgets/app_bar/custom_app_bar.dart';

class PosteriorStretchOngoingExerciseScreen extends StatelessWidget {
  const PosteriorStretchOngoingExerciseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.blueGray10001,
            appBar: CustomAppBar(
                height: getVerticalSize(104),
                title: Container(
                    margin: getMargin(left: 25, top: 55, bottom: 22),
                    decoration: AppDecoration.fill.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder14),
                    child: CustomImageView(
                        svgPath: ImageConstant.imgRectangle51,
                        height: getVerticalSize(27),
                        width: getHorizontalSize(260),
                        radius: BorderRadius.circular(getHorizontalSize(13)),
                        margin: getMargin(right: 78))),
                actions: [
                  AppbarImage(
                      height: getSize(43),
                      width: getSize(43),
                      svgPath: ImageConstant.imgRimedalfill,
                      margin: getMargin(top: 43, right: 22, bottom: 18))
                ],
                styleType: Style.bgFill_1),
            body: SizedBox(
                height: mediaQueryData.size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle45,
                      height: getVerticalSize(463),
                      width: getHorizontalSize(428),
                      alignment: Alignment.topCenter,
                      margin: getMargin(top: 38)),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: getPadding(
                              left: 24, top: 30, right: 24, bottom: 30),
                          decoration: AppDecoration.fill.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder43),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                    padding: getPadding(top: 11),
                                    child: Text("Straighten Left Arm",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .headlineLargeArimoBlack900)),
                                Container(
                                    height: getVerticalSize(255),
                                    width: getHorizontalSize(224),
                                    margin: getMargin(top: 7),
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                  height: getVerticalSize(225),
                                                  width: getHorizontalSize(202),
                                                  margin: getMargin(left: 7),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgEllipse17,
                                                            height:
                                                                getVerticalSize(
                                                                    191),
                                                            width:
                                                                getHorizontalSize(
                                                                    200),
                                                            alignment: Alignment
                                                                .topCenter),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            child: SizedBox(
                                                                height: getSize(
                                                                    194),
                                                                width: getSize(
                                                                    194),
                                                                child: CircularProgressIndicator(
                                                                    value: 0.5,
                                                                    backgroundColor: appTheme
                                                                        .blue400
                                                                        .withOpacity(
                                                                            0.09),
                                                                    color: appTheme
                                                                        .orangeA700
                                                                        .withOpacity(
                                                                            0.09)))),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            child: SizedBox(
                                                                height: getSize(
                                                                    194),
                                                                width: getSize(
                                                                    194),
                                                                child: CircularProgressIndicator(
                                                                    value: 0.5,
                                                                    backgroundColor: appTheme
                                                                        .blue400
                                                                        .withOpacity(
                                                                            0.09),
                                                                    color: appTheme
                                                                        .orangeA700))),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgEllipse18,
                                                            height:
                                                                getVerticalSize(
                                                                    88),
                                                            width:
                                                                getHorizontalSize(
                                                                    64),
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            margin: getMargin(
                                                                right: 8,
                                                                bottom: 9)),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            70,
                                                                        right:
                                                                            73,
                                                                        bottom:
                                                                            58),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text("67",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .displayMedium),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  9),
                                                                          child: Text(
                                                                              "13",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: theme.textTheme.headlineLarge))
                                                                    ])))
                                                      ]))),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgNotostar,
                                              height: getSize(45),
                                              width: getSize(45),
                                              alignment: Alignment.topLeft,
                                              margin: getMargin(top: 8)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgNotostarBlueGray100,
                                              height: getSize(45),
                                              width: getSize(45),
                                              alignment: Alignment.bottomRight,
                                              margin: getMargin(right: 27)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgQuestionBlack900,
                                              height: getSize(15),
                                              width: getSize(15),
                                              alignment: Alignment.topRight,
                                              margin: getMargin(top: 36)),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                  height: getSize(194),
                                                  width: getSize(194),
                                                  margin: getMargin(left: 7),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: SizedBox(
                                                                height: getSize(
                                                                    194),
                                                                width: getSize(
                                                                    194),
                                                                child: CircularProgressIndicator(
                                                                    value: 0.5,
                                                                    backgroundColor:
                                                                        appTheme
                                                                            .blue400,
                                                                    color: appTheme
                                                                        .orangeA700))),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgEllipse18,
                                                            height:
                                                                getVerticalSize(
                                                                    88),
                                                            width:
                                                                getHorizontalSize(
                                                                    64),
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            margin: getMargin(
                                                                bottom: 9)),
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            70,
                                                                        top: 46,
                                                                        right:
                                                                            65),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text("67",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .displayMedium),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  9),
                                                                          child: Text(
                                                                              "13",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: theme.textTheme.headlineLarge))
                                                                    ])))
                                                      ])))
                                        ])),
                                Padding(
                                    padding: getPadding(left: 7, top: 8),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgVector,
                                              height: getVerticalSize(38),
                                              width: getHorizontalSize(35),
                                              margin: getMargin(
                                                  top: 5, bottom: 20)),
                                          Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("1/9",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme.textTheme
                                                        .displaySmall),
                                                Text("reps",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .titleMediumArimoBlack900)
                                              ]),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgGrid,
                                              height: getVerticalSize(42),
                                              width: getHorizontalSize(39),
                                              margin:
                                                  getMargin(top: 5, bottom: 17),
                                              onTap: () {
                                                onTapImgGrid(context);
                                              })
                                        ]))
                              ])))
                ]))));
  }

  /// Navigates to the posteriorStretchClosedScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the posteriorStretchClosedScreen.
  onTapImgGrid(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.posteriorStretchClosedScreen);
  }
}
