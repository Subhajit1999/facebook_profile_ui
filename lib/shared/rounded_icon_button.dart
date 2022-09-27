import 'package:facebook_profile_ui/configs/size_config.dart';
import 'package:facebook_profile_ui/theme/colors.dart';
import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  final String? icon;
  const RoundedIconButton({this.icon, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1.25 * SizeConfig.heightMultiplier),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.shade300
      ),
      child: ImageIcon(
        AssetImage(icon!),
        size: 2.25 * SizeConfig.heightMultiplier,
      ),
    );
  }
}
