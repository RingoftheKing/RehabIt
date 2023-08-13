import '../home_page_sunday_page/widgets/home_page_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:gmc_flutter/core/app_export.dart';
import 'package:gmc_flutter/widgets/custom_elevated_button.dart';
import 'package:gmc_flutter/widgets/custom_floating_button.dart';
import 'package:gmc_flutter/widgets/custom_icon_button.dart';
import 'package:gmc_flutter/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomePageSundayPage extends StatelessWidget {
  HomePageSundayPage({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fill,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle43,
                          height: getVerticalSize(38),
                          width: getHorizontalSize(428)),
                      Padding(
                          padding: getPadding(left: 27, top: 3, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Home ",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        CustomTextStyles.displaySmallBlack900),
                                CustomImageView(
                                    svgPath: ImageConstant.imgSignal,
                                    height: getVerticalSize(7),
                                    width: getHorizontalSize(27),
                                    margin: getMargin(top: 16, bottom: 20))
                              ])),
                      CustomSearchView(
                          margin: getMargin(left: 14, top: 15, right: 15),
                          controller: searchController,
                          hintText: "Explore",
                          hintStyle: theme.textTheme.bodyLarge!,
                          textStyle: theme.textTheme.bodyLarge!,
                          prefix: Container(
                              margin: getMargin(
                                  left: 17, top: 11, right: 10, bottom: 11),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSearch)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(49)),
                          suffix: Padding(
                              padding:
                                  EdgeInsets.only(right: getHorizontalSize(15)),
                              child: IconButton(
                                  onPressed: () {
                                    searchController.clear();
                                  },
                                  icon: Icon(Icons.clear,
                                      color: Colors.grey.shade600))),
                          filled: true,
                          fillColor: appTheme.black900.withOpacity(0.04),
                          contentPadding:
                              getPadding(top: 14, right: 30, bottom: 14)),
                      Container(
                          height: getVerticalSize(897),
                          width: double.maxFinite,
                          margin: getMargin(top: 15),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: getPadding(left: 14, right: 20),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgQuestion,
                                              height: getSize(15),
                                              width: getSize(15),
                                              alignment: Alignment.centerRight,
                                              margin: getMargin(right: 4)),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  padding: getPadding(
                                                      left: 21,
                                                      top: 22,
                                                      right: 21,
                                                      bottom: 22),
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: fs.Svg(
                                                              ImageConstant
                                                                  .imgEllipse6),
                                                          fit: BoxFit.cover)),
                                                  child: Card(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      elevation: 0,
                                                      margin: EdgeInsets.all(0),
                                                      color: appTheme.whiteA700,
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder90),
                                                      child: Container(
                                                          height: getSize(181),
                                                          width: getSize(181),
                                                          padding: getPadding(
                                                              all: 8),
                                                          decoration: AppDecoration
                                                              .fill
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder90),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Padding(
                                                                        padding: getPadding(left: 71, right: 64),
                                                                        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                          Text(
                                                                              "0",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: theme.textTheme.displayMedium),
                                                                          Padding(
                                                                              padding: getPadding(left: 4),
                                                                              child: Text("0", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.headlineLarge))
                                                                        ]))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Container(
                                                                        height: getSize(
                                                                            164),
                                                                        width: getSize(
                                                                            164),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                appTheme.orange50,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(82)))))
                                                              ]))))),
                                          Padding(
                                              padding:
                                                  getPadding(left: 63, top: 32),
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        height: getSize(14),
                                                        width: getSize(14),
                                                        margin: getMargin(
                                                            top: 5, bottom: 6),
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .blue400,
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        7)))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 9, top: 2),
                                                        child: Text("Completed",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .titleLarge)),
                                                    Container(
                                                        height: getSize(14),
                                                        width: getSize(14),
                                                        margin: getMargin(
                                                            left: 39,
                                                            top: 5,
                                                            bottom: 6),
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .orangeA700,
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        7)))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 10,
                                                            bottom: 2),
                                                        child: Text("Strain",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: CustomTextStyles
                                                                .titleLargeOrangeA700))
                                                  ])),
                                          Padding(
                                              padding:
                                                  getPadding(left: 12, top: 28),
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Activities",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
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
                                                        margin: getMargin(
                                                            bottom: 2),
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
                                                  ])),
                                          Padding(
                                              padding: getPadding(top: 23),
                                              child: ListView.separated(
                                                  physics:
                                                      NeverScrollableScrollPhysics(),
                                                  shrinkWrap: true,
                                                  separatorBuilder:
                                                      (context, index) {
                                                    return SizedBox(
                                                        height: getVerticalSize(
                                                            12));
                                                  },
                                                  itemCount: 4,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return HomePageItemWidget(
                                                        onTapBtnPhplayfill: () {
                                                      onTapBtnPhplayfill(
                                                          context);
                                                    });
                                                  })),
                                          Container(
                                              height: getVerticalSize(49),
                                              width: getHorizontalSize(234),
                                              margin:
                                                  getMargin(left: 12, top: 8),
                                              child: Stack(
                                                  alignment: Alignment.topRight,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: SizedBox(
                                                            width:
                                                                getHorizontalSize(
                                                                    234),
                                                            child: Text(
                                                                "Appointments",
                                                                maxLines: null,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: theme
                                                                    .textTheme
                                                                    .headlineMedium))),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgQuestion,
                                                        height: getSize(15),
                                                        width: getSize(15),
                                                        alignment:
                                                            Alignment.topRight,
                                                        margin: getMargin(
                                                            top: 10, right: 19))
                                                  ]))
                                        ]))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    padding: getPadding(bottom: 756),
                                    child: IntrinsicWidth(
                                        child: SizedBox(
                                            height: getVerticalSize(141),
                                            width: double.maxFinite,
                                            child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  141),
                                                          width:
                                                              getHorizontalSize(
                                                                  129),
                                                          margin: getMargin(
                                                              right: 36),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgGhlslides90141x129,
                                                                    height:
                                                                        getVerticalSize(
                                                                            141),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            129),
                                                                    alignment:
                                                                        Alignment
                                                                            .center),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                9),
                                                                        child: Text(
                                                                            "S",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: theme.textTheme.titleMedium)))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Container(
                                                          height: getSize(27),
                                                          width: getSize(27),
                                                          margin: getMargin(
                                                              top: 6,
                                                              right: 26),
                                                          decoration: BoxDecoration(
                                                              color: appTheme
                                                                  .blue400,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          13))))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  134),
                                                          width:
                                                              getHorizontalSize(
                                                                  131),
                                                          margin: getMargin(
                                                              left: 85),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .img101134x131,
                                                                    height:
                                                                        getVerticalSize(
                                                                            134),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            131),
                                                                    radius: BorderRadius.circular(
                                                                        getHorizontalSize(
                                                                            65)),
                                                                    alignment:
                                                                        Alignment
                                                                            .center),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                4),
                                                                        child: Text(
                                                                            "W",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: theme.textTheme.titleMedium)))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  134),
                                                          width:
                                                              getHorizontalSize(
                                                                  137),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .img111134x137,
                                                                    height:
                                                                        getVerticalSize(
                                                                            134),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            137),
                                                                    alignment:
                                                                        Alignment
                                                                            .center),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                4),
                                                                        child: Text(
                                                                            "T",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: theme.textTheme.titleMedium)))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  131),
                                                          width:
                                                              getHorizontalSize(
                                                                  132),
                                                          margin: getMargin(
                                                              left: 27),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .img91131x132,
                                                                    height:
                                                                        getVerticalSize(
                                                                            131),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            132),
                                                                    alignment:
                                                                        Alignment
                                                                            .center),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    child: Padding(
                                                                        padding: getPadding(left: 4, top: 2),
                                                                        child: Row(children: [
                                                                          Text(
                                                                              "M",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: theme.textTheme.titleMedium),
                                                                          Padding(
                                                                              padding: getPadding(left: 40),
                                                                              child: Text("T", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleMedium))
                                                                        ])))
                                                              ]))),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .img81125x95,
                                                      height:
                                                          getVerticalSize(125),
                                                      width:
                                                          getHorizontalSize(95),
                                                      alignment:
                                                          Alignment.centerLeft),
                                                  Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  80),
                                                          width:
                                                              getHorizontalSize(
                                                                  51),
                                                          margin: getMargin(
                                                              top: 9,
                                                              right: 135),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .img8180x51,
                                                                    height:
                                                                        getVerticalSize(
                                                                            80),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            51),
                                                                    alignment:
                                                                        Alignment
                                                                            .center),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter,
                                                                    child: Text(
                                                                        "F",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: CustomTextStyles
                                                                            .titleMediumBlue400))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  141),
                                                          width:
                                                              getHorizontalSize(
                                                                  129),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgGhlslides90141x129,
                                                                    height:
                                                                        getVerticalSize(
                                                                            141),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            129),
                                                                    alignment:
                                                                        Alignment
                                                                            .center),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                9),
                                                                        child: Text(
                                                                            "S",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: CustomTextStyles.titleMediumWhiteA700)))
                                                              ])))
                                                ]))))),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    height: getVerticalSize(93),
                                    width: getHorizontalSize(382),
                                    margin: getMargin(bottom: 57),
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                  margin: getMargin(bottom: 20),
                                                  padding: getPadding(
                                                      left: 2,
                                                      top: 6,
                                                      right: 2,
                                                      bottom: 6),
                                                  decoration: AppDecoration
                                                      .fill1
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder14),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgScreenshot20230721,
                                                            height:
                                                                getVerticalSize(
                                                                    59),
                                                            width:
                                                                getHorizontalSize(
                                                                    75),
                                                            margin: getMargin(
                                                                bottom: 2)),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgClock,
                                                            height: getSize(13),
                                                            width: getSize(13),
                                                            margin: getMargin(
                                                                left: 5,
                                                                top: 39,
                                                                bottom: 7)),
                                                        Spacer(flex: 29),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgFluentmdl2exercisetracker,
                                                            height: getSize(27),
                                                            width: getSize(27),
                                                            margin: getMargin(
                                                                top: 30,
                                                                bottom: 4)),
                                                        Spacer(flex: 70),
                                                        CustomIconButton(
                                                            height: 45,
                                                            width: 45,
                                                            margin: getMargin(
                                                                top: 8,
                                                                right: 10,
                                                                bottom: 8),
                                                            padding: getPadding(
                                                                all: 11),
                                                            child: CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgPhplayfill))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: SizedBox(
                                                  height: getVerticalSize(78),
                                                  width: getHorizontalSize(209),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: SizedBox(
                                                                width:
                                                                    getHorizontalSize(
                                                                        209),
                                                                child: Text(
                                                                    "Cross Body Stretch",
                                                                    maxLines:
                                                                        null,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: CustomTextStyles
                                                                        .titleMediumBlack900_1))),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding: getPadding(
                                                                    left: 18),
                                                                child: Text(
                                                                    "5 min  |",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelLarge)))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomRight,
                                              child: Padding(
                                                  padding: getPadding(
                                                      right: 35, bottom: 32),
                                                  child: Text("Hard",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .labelLarge12)))
                                        ])))
                          ]))
                    ]))),
            floatingActionButton: CustomFloatingButton(
                height: 45,
                width: 45,
                backgroundColor: appTheme.blue400,
                child: CustomImageView(
                    svgPath: ImageConstant.imgPhplayfill,
                    height: getVerticalSize(22.5),
                    width: getHorizontalSize(22.5)))));
  }

  /// Navigates to the posteriorStretchClosedScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the posteriorStretchClosedScreen.
  onTapBtnPhplayfill(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.posteriorStretchClosedScreen);
  }
}
