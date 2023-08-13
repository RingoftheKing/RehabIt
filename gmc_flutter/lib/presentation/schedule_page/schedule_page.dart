import 'package:flutter/material.dart';
import 'package:gmc_flutter/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SchedulePage extends StatefulWidget {
  const SchedulePage({Key? key})
      : super(
          key: key,
        );

  @override
  SchedulePageState createState() => SchedulePageState();
}

class SchedulePageState extends State<SchedulePage>
    with AutomaticKeepAliveClientMixin<SchedulePage> {
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
                    left: 39,
                    top: 33,
                    right: 38,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "July 2023",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.headlineSmall,
                      ),
                      Container(
                        height: getVerticalSize(
                          306,
                        ),
                        width: getHorizontalSize(
                          351,
                        ),
                        margin: getMargin(
                          top: 21,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.black900.withOpacity(0.04),
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              14,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 22,
                        ),
                        child: Text(
                          "Upcoming",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          78,
                        ),
                        width: getHorizontalSize(
                          349,
                        ),
                        margin: getMargin(
                          left: 2,
                          top: 20,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.black900.withOpacity(0.04),
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              14,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          78,
                        ),
                        width: getHorizontalSize(
                          349,
                        ),
                        margin: getMargin(
                          top: 16,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.black900.withOpacity(0.04),
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              14,
                            ),
                          ),
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
