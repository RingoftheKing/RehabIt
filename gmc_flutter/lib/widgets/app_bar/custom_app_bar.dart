import 'package:flutter/material.dart';
import 'package:gmc_flutter/core/app_export.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    required this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  double height;

  Style? styleType;

  double? leadingWidth;

  Widget? leading;

  Widget? title;

  bool? centerTitle;

  List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        mediaQueryData.size.width,
        height,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgFill_1:
        return Stack(
          children: [
            Container(
              height: getVerticalSize(
                104,
              ),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: appTheme.gray200,
              ),
            ),
            Container(
              height: getVerticalSize(
                27,
              ),
              width: getHorizontalSize(
                338,
              ),
              margin: getMargin(
                left: 25,
                top: 55,
                right: 65,
                bottom: 22,
              ),
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    13,
                  ),
                ),
              ),
            ),
          ],
        );
      case Style.bgFill:
        return Container(
          height: getVerticalSize(
            101,
          ),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgFill_1,
  bgFill,
}
