import 'package:flutter/material.dart';
import 'package:gmc_flutter/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ActivitiesPage extends StatefulWidget {
  const ActivitiesPage({Key? key})
      : super(
          key: key,
        );

  @override
  ActivitiesPageState createState() => ActivitiesPageState();
}

class ActivitiesPageState extends State<ActivitiesPage>
    with AutomaticKeepAliveClientMixin<ActivitiesPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 14,
                    top: 18,
                    right: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: getVerticalSize(
                              216,
                            ),
                            width: getHorizontalSize(
                              190,
                            ),
                            margin: getMargin(
                              top: 10,
                            ),
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    margin: getMargin(
                                      left: 9,
                                    ),
                                    padding: getPadding(
                                      left: 22,
                                      top: 11,
                                      right: 22,
                                      bottom: 11,
                                    ),
                                    decoration: AppDecoration.fill4.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder20,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: getPadding(
                                              top: 146,
                                            ),
                                            child: Text(
                                              "Posterior Stretch",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.titleSmall,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 31,
                                            top: 8,
                                          ),
                                          child: Row(
                                            children: [
                                              CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgClockBlack900,
                                                height: getSize(
                                                  20,
                                                ),
                                                width: getSize(
                                                  20,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 4,
                                                  bottom: 4,
                                                ),
                                                child: Text(
                                                  "5 min",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.img360f469739073152x184,
                                  height: getVerticalSize(
                                    152,
                                  ),
                                  width: getHorizontalSize(
                                    184,
                                  ),
                                  alignment: Alignment.topLeft,
                                  margin: getMargin(
                                    top: 4,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: getVerticalSize(
                              226,
                            ),
                            width: getHorizontalSize(
                              185,
                            ),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    margin: getMargin(
                                      left: 7,
                                      top: 10,
                                    ),
                                    padding: getPadding(
                                      left: 58,
                                      top: 11,
                                      right: 58,
                                      bottom: 11,
                                    ),
                                    decoration: AppDecoration.fill4.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder20,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant.imgWitime8,
                                          height: getSize(
                                            20,
                                          ),
                                          width: getSize(
                                            20,
                                          ),
                                          margin: getMargin(
                                            top: 172,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 173,
                                            bottom: 4,
                                          ),
                                          child: Text(
                                            "7 min",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.img360f531035147183x184,
                                  height: getVerticalSize(
                                    183,
                                  ),
                                  width: getHorizontalSize(
                                    184,
                                  ),
                                  alignment: Alignment.topCenter,
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(
                                    padding: getPadding(
                                      right: 27,
                                      bottom: 39,
                                    ),
                                    child: Text(
                                      "Anterior Stretch",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: getMargin(
                          left: 11,
                          top: 27,
                        ),
                        padding: getPadding(
                          left: 29,
                          top: 11,
                          right: 29,
                          bottom: 11,
                        ),
                        decoration: AppDecoration.fill4.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgScreenshot20230720,
                              height: getVerticalSize(
                                138,
                              ),
                              width: getHorizontalSize(
                                116,
                              ),
                              margin: getMargin(
                                left: 4,
                                top: 5,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: getPadding(
                                  top: 1,
                                ),
                                child: Text(
                                  "Side Stretch",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 22,
                                top: 6,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgClockBlack900,
                                    height: getSize(
                                      20,
                                    ),
                                    width: getSize(
                                      20,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 4,
                                      top: 1,
                                      bottom: 3,
                                    ),
                                    child: Text(
                                      "9 min",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.labelLarge,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
