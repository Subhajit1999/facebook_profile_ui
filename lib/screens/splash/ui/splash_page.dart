import 'dart:async';
import 'package:facebook_profile_ui/configs/size_config.dart';
import 'package:facebook_profile_ui/utils/media.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  int SPLASH_TIMEOUT = 2;
  bool _visible = false;

  @override
  void initState() {
    super.initState();
    // Orientation lock
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        _visible = true;
      });
      moveToNextRoute('/profile');
    });
  }

  void moveToNextRoute(String path) {
    Timer(Duration(seconds: SPLASH_TIMEOUT), () {
      Navigator.of(context).pushReplacementNamed(path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 3 * SizeConfig.heightMultiplier),
        alignment: Alignment.center,
        child: AnimatedOpacity(
            opacity: _visible? 1 : 0,
            duration: const Duration(seconds: 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Image.asset(AppMedia.appLogo, scale: 0.55 * SizeConfig.widthMultiplier,)),
                // RichText(
                //     textAlign: TextAlign.center,
                //     text: TextSpan(
                //         text: 'from\n',
                //         style: Theme.of(context).textTheme.bodyText1!.copyWith(
                //             fontSize: 1.85 * SizeConfig.textMultiplier
                //         ),
                //         children: <TextSpan>[
                //           TextSpan(
                //               text: 'LazyTechSavvy',
                //               style: Theme.of(context).textTheme.headline5!.copyWith(
                //                 fontSize: 2.15 * SizeConfig.textMultiplier,
                //                 fontStyle: FontStyle.italic,
                //               )
                //           )
                //         ]
                //     )
                // ),
              ],
            )
        ),
      ),
    );
  }
}