import 'package:flutter/material.dart';
import 'package:gmc_flutter/core/app_export.dart';
import 'package:gmc_flutter/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class HomePageItemWidget extends StatelessWidget {
  HomePageItemWidget({
    Key? key,
    this.onTapBtnPhplayfill,
  }) : super(
          key: key,
        );

  VoidCallback? onTapBtnPhplayfill;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(
        73,
      ),
      width: getHorizontalSize(
        393,
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: getMargin(
                left: 11,
              ),
              padding: getPadding(
                all: 11,
              ),
              decoration: AppDecoration.fill1.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder14,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 71,
                      top: 2,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleMediumBlack900_1,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgClock,
                              height: getSize(
                                13,
                              ),
                              width: getSize(
                                13,
                              ),
                              margin: getMargin(
                                top: 9,
                                bottom: 3,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 5,
                                top: 10,
                                bottom: 1,
                              ),
                              child: Text(
                                "",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.labelLarge,
                              ),
                            ),
                            CustomImageView(
                              svgPath:
                                  ImageConstant.imgFluentmdl2exercisetracker,
                              height: getSize(
                                27,
                              ),
                              width: getSize(
                                27,
                              ),
                              margin: getMargin(
                                left: 5,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 5,
                                top: 10,
                                bottom: 2,
                              ),
                              child: Text(
                                "",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.labelLarge12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  CustomIconButton(
                    height: 45,
                    width: 45,
                    margin: getMargin(
                      top: 2,
                      bottom: 4,
                    ),
                    padding: getPadding(
                      all: 11,
                    ),
                    onTap: () {
                      onTapBtnPhplayfill?.call();
                    },
                    child: CustomImageView(
                      svgPath: ImageConstant.imgPhplayfill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img360f469739073,
            height: getVerticalSize(
              63,
            ),
            width: getHorizontalSize(
              97,
            ),
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
    );
  }
}
