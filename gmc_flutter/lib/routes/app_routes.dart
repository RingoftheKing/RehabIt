import 'package:flutter/material.dart';
import 'package:gmc_flutter/presentation/home_page_friday_screen/home_page_friday_screen.dart';
import 'package:gmc_flutter/presentation/loading_screen/loading_screen.dart';
import 'package:gmc_flutter/presentation/activities_tab_container_screen/activities_tab_container_screen.dart';
import 'package:gmc_flutter/presentation/home_page_sunday_container_screen/home_page_sunday_container_screen.dart';
import 'package:gmc_flutter/presentation/posterior_stretch_closed_screen/posterior_stretch_closed_screen.dart';
import 'package:gmc_flutter/presentation/posterior_stretch_open_screen/posterior_stretch_open_screen.dart';
import 'package:gmc_flutter/presentation/posterior_stretch_start_exercise_empty_screen/posterior_stretch_start_exercise_empty_screen.dart';
import 'package:gmc_flutter/presentation/posterior_stretch_ongoing_exercise_screen/posterior_stretch_ongoing_exercise_screen.dart';
import 'package:gmc_flutter/presentation/members_page_screen/members_page_screen.dart';
import 'package:gmc_flutter/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homePageFridayScreen = '/home_page_friday_screen';

  static const String loadingScreen = '/loading_screen';

  static const String activitiesPage = '/activities_page';

  static const String activitiesTabContainerScreen =
      '/activities_tab_container_screen';

  static const String homePageSundayPage = '/home_page_sunday_page';

  static const String homePageSundayContainerScreen =
      '/home_page_sunday_container_screen';

  static const String posteriorStretchClosedScreen =
      '/posterior_stretch_closed_screen';

  static const String posteriorStretchOpenScreen =
      '/posterior_stretch_open_screen';

  static const String posteriorStretchStartExerciseEmptyScreen =
      '/posterior_stretch_start_exercise_empty_screen';

  static const String posteriorStretchOngoingExerciseScreen =
      '/posterior_stretch_ongoing_exercise_screen';

  static const String chatPage = '/chat_page';

  static const String schedulePage = '/schedule_page';

  static const String schedulePageTabContainerPage =
      '/schedule_page_tab_container_page';

  static const String membersPageScreen = '/members_page_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    homePageFridayScreen: (context) => HomePageFridayScreen(),
    loadingScreen: (context) => LoadingScreen(),
    activitiesTabContainerScreen: (context) => ActivitiesTabContainerScreen(),
    homePageSundayContainerScreen: (context) => HomePageSundayContainerScreen(),
    posteriorStretchClosedScreen: (context) => PosteriorStretchClosedScreen(),
    posteriorStretchOpenScreen: (context) => PosteriorStretchOpenScreen(),
    posteriorStretchStartExerciseEmptyScreen: (context) =>
        PosteriorStretchStartExerciseEmptyScreen(),
    posteriorStretchOngoingExerciseScreen: (context) =>
        PosteriorStretchOngoingExerciseScreen(),
    membersPageScreen: (context) => MembersPageScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
