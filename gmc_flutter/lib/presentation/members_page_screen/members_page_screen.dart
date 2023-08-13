import 'package:flutter/material.dart';
import 'package:gmc_flutter/core/app_export.dart';
import 'package:gmc_flutter/presentation/home_page_sunday_page/home_page_sunday_page.dart';
import 'package:gmc_flutter/presentation/schedule_page_tab_container_page/schedule_page_tab_container_page.dart';
import 'package:gmc_flutter/widgets/app_bar/appbar_image.dart';
import 'package:gmc_flutter/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:gmc_flutter/widgets/app_bar/custom_app_bar.dart';
import 'package:gmc_flutter/widgets/custom_bottom_bar.dart';
import 'package:gmc_flutter/widgets/custom_elevated_button.dart';

class MembersPageScreen extends StatelessWidget {
  MembersPageScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 40,
            top: 17,
            right: 40,
            bottom: 17,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomElevatedButton(
                text: "Chat",
                margin: getMargin(
                  top: 11,
                  bottom: 658,
                ),
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
              Padding(
                padding: getPadding(
                  left: 49,
                  top: 11,
                  bottom: 658,
                ),
                child: Text(
                  "Schedule",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleMediumBlack900,
                ),
              ),
              CustomElevatedButton(
                text: "Members",
                margin: getMargin(
                  left: 24,
                  bottom: 645,
                ),
                buttonStyle: CustomButtonStyles.fillBlue400TL20.copyWith(
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
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
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
}
