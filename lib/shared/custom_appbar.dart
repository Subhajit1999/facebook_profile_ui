import 'package:facebook_profile_ui/configs/size_config.dart';
import 'package:facebook_profile_ui/shared/rounded_icon_button.dart';
import 'package:facebook_profile_ui/utils/media.dart';
import 'package:facebook_profile_ui/utils/statics.dart';
import 'package:flutter/material.dart';

class FacebookAppBar extends StatefulWidget with PreferredSizeWidget{
  @override
  final Size preferredSize;
  FacebookAppBar({Key? key}) : preferredSize = Size.fromHeight(AppStatics.mainToolbarSize), super(key: key);

  @override
  State<FacebookAppBar> createState() => _FacebookAppBarState();
}

class _FacebookAppBarState extends State<FacebookAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: Theme.of(context).iconTheme,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AppMedia.appTextLogo, scale: 2 * SizeConfig.widthMultiplier,),
          Row(
            children: [
              RoundedIconButton(icon: AppMedia.add,),
              SizedBox(width: 2 * SizeConfig.widthMultiplier,),
              RoundedIconButton(icon: AppMedia.search,),
              SizedBox(width: 2 * SizeConfig.widthMultiplier,),
              RoundedIconButton(icon: AppMedia.messenger,),
            ],
          ),
        ],
      ),
    );
  }
}
