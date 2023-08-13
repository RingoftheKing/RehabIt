import 'package:flutter/material.dart';
import 'package:gmc_flutter/core/app_export.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blue500,
        body: SizedBox(
          width: double.maxFinite,
          child: CustomImageView(
            imagePath: ImageConstant.imgGhlslides20,
            height: getVerticalSize(
              120,
            ),
            width: getHorizontalSize(
              280,
            ),
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
