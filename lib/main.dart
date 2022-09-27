

import 'package:facebook_profile_ui/configs/size_config.dart';
import 'package:facebook_profile_ui/routes.dart';
import 'package:facebook_profile_ui/theme/styles.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initDefault();
  runApp(AppMain());
}

Future<void> initDefault() async {
  // Initialize something, if needed
}

class AppMain extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(           // Constraints info
      builder: (context, constraints) {
        return OrientationBuilder(          // Orientation info
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);  // SizeConfig() init
            return MaterialApp(
              builder: (BuildContext context, Widget? widget) {
                // ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
                //   return ErrorReportPage(context, errorDetails);
                // };
                return widget!;
              },
              debugShowCheckedModeBanner: false,
              theme: AppTheme.lightTheme,
              initialRoute: '/',
              onGenerateRoute: AppRoutes.generateRoute,
            );
          },
        );
      },
    );
  }
}
