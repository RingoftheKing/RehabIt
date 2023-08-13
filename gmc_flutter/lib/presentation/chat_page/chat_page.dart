import 'package:flutter/material.dart';
import 'package:gmc_flutter/core/app_export.dart';
import 'package:gmc_flutter/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class ChatPage extends StatefulWidget {
  const ChatPage({Key? key})
      : super(
          key: key,
        );

  @override
  ChatPageState createState() => ChatPageState();
}

class ChatPageState extends State<ChatPage>
    with AutomaticKeepAliveClientMixin<ChatPage> {
  TextEditingController searchController = TextEditingController();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 34,
                    top: 23,
                    right: 36,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomSearchView(
                        controller: searchController,
                        hintText: "Search",
                        hintStyle: theme.textTheme.bodyLarge!,
                        textStyle: theme.textTheme.bodyLarge!,
                        prefix: Container(
                          margin: getMargin(
                            left: 19,
                            top: 11,
                            right: 10,
                            bottom: 11,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgSearch,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: getVerticalSize(
                            49,
                          ),
                        ),
                        suffix: Padding(
                          padding: EdgeInsets.only(
                            right: getHorizontalSize(
                              15,
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {
                              searchController.clear();
                            },
                            icon: Icon(
                              Icons.clear,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ),
                        filled: true,
                        fillColor: appTheme.black900.withOpacity(0.04),
                        contentPadding: getPadding(
                          top: 14,
                          right: 30,
                          bottom: 14,
                        ),
                        defaultBorderDecoration:
                            SearchViewStyleHelper.fillBlack900TL24,
                        enabledBorderDecoration:
                            SearchViewStyleHelper.fillBlack900TL24,
                        focusedBorderDecoration:
                            SearchViewStyleHelper.fillBlack900TL24,
                        disabledBorderDecoration:
                            SearchViewStyleHelper.fillBlack900TL24,
                      ),
                      Container(
                        height: getVerticalSize(
                          78,
                        ),
                        width: getHorizontalSize(
                          357,
                        ),
                        margin: getMargin(
                          top: 24,
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
                          357,
                        ),
                        margin: getMargin(
                          top: 15,
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
