import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:gmc_flutter/theme/theme_helper.dart';
import 'package:gmc_flutter/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      title: 'gmc_flutter',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.posteriorStretchStartExerciseEmptyScreen,
      routes: AppRoutes.routes,
    );
  }
}
