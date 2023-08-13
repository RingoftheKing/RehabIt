import 'package:flutter/material.dart';
import 'package:gmc_flutter/core/app_export.dart';
import 'package:gmc_flutter/presentation/posterior_stretch_start_exercise_empty_screen/widgets/exercise_banner.dart';
import 'package:gmc_flutter/presentation/posterior_stretch_start_exercise_empty_screen/widgets/progress_meter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PosteriorStretchStartExerciseEmptyScreen extends StatelessWidget {
  const PosteriorStretchStartExerciseEmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.blueGray10001,
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
                          width: double.maxFinite,
                          margin: getMargin(top: 480),
                          padding: getPadding(
                              left: 24, top: 30, right: 24, bottom: 30),
                          decoration: AppDecoration.fill.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder43),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomImageView(
                                  // mute icon
                                    svgPath: ImageConstant.imgVector,
                                    height: getVerticalSize(38),
                                    width: getHorizontalSize(35),
                                    margin: getMargin(top: 325, bottom: 20)),
                                Padding(
                                    padding: getPadding(left: 43, top: 11),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          ExerciseStatus(),
                                          Container(
                                              height: getVerticalSize(255),
                                              width: getHorizontalSize(224),
                                              margin: getMargin(top: 7),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .center,
                                                        child: Container(
                                                            height:
                                                                getSize(194),
                                                            width: getSize(194),
                                                            margin: getMargin(
                                                                left: 7),
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                children: [
                                                                  Align(
                                                                    //TODO: progress meter
                                                                      alignment: Alignment.topCenter,
                                                                      child: ProgressMeter(
                                                                          startAngle: 180,
                                                                          endAngle: 0,
                                                                          invertFill: false,
                                                                          backgroundColor: const Color.fromARGB(30, 0, 169, 180),
                                                                          fillColor: Colors.blue)
                                                                  ),
                                                                  Align(
                                                                    //TODO: strain meter
                                                                      alignment: Alignment.bottomCenter,
                                                                      child: ProgressMeter(startAngle: 360,
                                                                          endAngle: 180,
                                                                          invertFill: true,
                                                                          backgroundColor: const Color.fromARGB(30, 0, 169, 180),
                                                                          fillColor: Colors.orange)
                                                                  ),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .topCenter,
                                                                      child: Padding(
                                                                          padding: getPadding(left: 82, top: 50, right: 82),
                                                                          child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                            Text("0",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: theme.textTheme.displayMedium),
                                                                            Text("0",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: theme.textTheme.headlineLarge)
                                                                          ])))
                                                                ]))),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgNotostar,
                                                        height: getSize(45),
                                                        width: getSize(45),
                                                        alignment:
                                                            Alignment.topLeft,
                                                        margin:
                                                            getMargin(top: 8)),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgNotostarBlueGray100,
                                                        height: getSize(45),
                                                        width: getSize(45),
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        margin: getMargin(
                                                            right: 27)),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgQuestionBlack900,
                                                        height: getSize(15),
                                                        width: getSize(15),
                                                        alignment:
                                                            Alignment.topRight,
                                                        margin:
                                                            getMargin(top: 36)),
                                                  ])),
                                          Padding(
                                              padding:
                                                  getPadding(left: 77, top: 8),
                                              child: Text("1/9",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.displaySmall)),
                                          Padding(
                                              padding: getPadding(left: 84),
                                              child: Text("reps",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .titleMediumArimoBlack900))
                                        ])),
                                CustomImageView(
                                    svgPath: ImageConstant.imgGrid,
                                    height: getVerticalSize(42),
                                    width: getHorizontalSize(39),
                                    margin: getMargin(
                                        left: 31, top: 325, bottom: 17),
                                    onTap: () {
                                      onTapImgGrid(context);
                                    })
                              ]))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          width: double.maxFinite,
                          margin: getMargin(bottom: 822),
                          padding: getPadding(
                              left: 22, top: 18, right: 22, bottom: 18),
                          decoration: AppDecoration.fill8,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                    height: getVerticalSize(27),
                                    width: getHorizontalSize(338),
                                    margin: getMargin(top: 37, bottom: 4),
                                    decoration: BoxDecoration(
                                        color: appTheme.whiteA700,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(13)))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgRimedalfill,
                                    height: getSize(43),
                                    width: getSize(43),
                                    margin: getMargin(top: 25))
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
