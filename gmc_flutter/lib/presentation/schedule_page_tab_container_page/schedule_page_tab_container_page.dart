import 'package:flutter/material.dart';
import 'package:gmc_flutter/core/app_export.dart';
import 'package:gmc_flutter/presentation/schedule_page/schedule_page.dart';
import 'package:gmc_flutter/widgets/app_bar/appbar_image.dart';
import 'package:gmc_flutter/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:gmc_flutter/widgets/app_bar/custom_app_bar.dart';
import 'package:gmc_flutter/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class SchedulePageTabContainerPage extends StatefulWidget {
  const SchedulePageTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  SchedulePageTabContainerPageState createState() =>
      SchedulePageTabContainerPageState();
}

class SchedulePageTabContainerPageState
    extends State<SchedulePageTabContainerPage> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            96,
          ),
          leadingWidth: 60,
          leading: AppbarImage(
            height: getSize(
              38,
            ),
            width: getSize(
              38,
            ),
            svgPath: ImageConstant.imgBipersonfill,
            margin: getMargin(
              left: 22,
              top: 9,
              bottom: 9,
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitle1(
            text: "Care Team",
          ),
          actions: [
            AppbarImage(
              height: getVerticalSize(
                8,
              ),
              width: getHorizontalSize(
                32,
              ),
              svgPath: ImageConstant.imgSignal,
              margin: getMargin(
                left: 27,
                top: 25,
                right: 27,
                bottom: 23,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  46,
                ),
                width: getHorizontalSize(
                  321,
                ),
                margin: getMargin(
                  top: 17,
                ),
                child: TabBar(
                  controller: tabviewController,
                  labelColor: appTheme.blue400,
                  labelStyle: TextStyle(),
                  unselectedLabelColor: appTheme.black900.withOpacity(0.24),
                  unselectedLabelStyle: TextStyle(),
                  indicator: BoxDecoration(
                    color: appTheme.blue400.withOpacity(0.09),
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        20,
                      ),
                    ),
                  ),
                  tabs: [
                    Tab(
                      child: CustomElevatedButton(
                        text: "Chat",
                        rightIcon: Container(
                          margin: getMargin(
                            left: 5,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgVectorOrangeA700,
                          ),
                        ),
                        buttonStyle: CustomButtonStyles.none.copyWith(
                            fixedSize: MaterialStateProperty.all<Size>(Size(
                          getHorizontalSize(
                            68,
                          ),
                          getVerticalSize(
                            21,
                          ),
                        ))),
                        buttonTextStyle: CustomTextStyles.titleMediumBlack900,
                      ),
                    ),
                    Tab(
                      child: CustomElevatedButton(
                        text: "Schedule",
                        buttonStyle:
                            CustomButtonStyles.fillBlue400TL20.copyWith(
                                fixedSize: MaterialStateProperty.all<Size>(Size(
                          getHorizontalSize(
                            112,
                          ),
                          getVerticalSize(
                            46,
                          ),
                        ))),
                        buttonTextStyle: CustomTextStyles.titleMediumBlue400,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Members",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getVerticalSize(
                  662,
                ),
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    SchedulePage(),
                    SchedulePage(),
                    SchedulePage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
