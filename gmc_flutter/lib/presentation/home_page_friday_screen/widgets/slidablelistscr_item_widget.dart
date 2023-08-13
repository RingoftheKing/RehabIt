import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:gmc_flutter/core/app_export.dart';
import 'package:gmc_flutter/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SlidablelistscrItemWidget extends StatelessWidget {
  SlidablelistscrItemWidget({
    Key? key,
    this.onTapBtnVector,
  }) : super(
          key: key,
        );

  VoidCallback? onTapBtnVector;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(
        motion: ScrollMotion(),
        extentRatio: 0.29,
        dragDismissible: false,
        children: [
          Container(
            margin: getMargin(
              left: 20,
            ),
            height: getVerticalSize(
              73,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgScreenshot20230720,
              height: getVerticalSize(
                71,
              ),
              width: getHorizontalSize(
                59,
              ),
            ),
          ),
        ],
      ),
      child: SizedBox(
        height: getVerticalSize(
          73,
        ),
        width: getHorizontalSize(
          393,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomIconButton(
              height: 45,
              width: 45,
              margin: getMargin(
                right: 11,
              ),
              padding: getPadding(
                all: 13,
              ),
              alignment: Alignment.centerRight,
              onTap: () {
                onTapBtnVector?.call();
              },
              child: CustomImageView(
                svgPath: ImageConstant.imgVectorWhiteA700,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: getMargin(
                  left: 11,
                ),
                padding: getPadding(
                  left: 82,
                  top: 12,
                  right: 82,
                  bottom: 12,
                ),
                decoration: AppDecoration.fill1.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder14,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.titleMediumBlack900_1,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 10,
                      ),
                      child: Row(
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
                              bottom: 1,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 5,
                            ),
                            child: Text(
                              "",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgTicket,
                            height: getVerticalSize(
                              12,
                            ),
                            width: getHorizontalSize(
                              21,
                            ),
                            margin: getMargin(
                              left: 8,
                              bottom: 3,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 8,
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
      ),
    );
  }
}
