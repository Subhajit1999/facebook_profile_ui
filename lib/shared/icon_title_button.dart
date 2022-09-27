import 'package:facebook_profile_ui/configs/size_config.dart';
import 'package:facebook_profile_ui/theme/colors.dart';
import 'package:flutter/material.dart';

class IconTitledButton extends StatelessWidget {
  final IconData? icon;
  final String? title;
  final bool? hasPrimaryColor;
  const IconTitledButton({this.icon, this.title, this.hasPrimaryColor, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier, horizontal: 3.5 * SizeConfig.widthMultiplier),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(0.5 * SizeConfig.heightMultiplier)),
          color: hasPrimaryColor!? AppColors.primaryColor : Colors.grey.shade300
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 2.25 * SizeConfig.heightMultiplier, color: hasPrimaryColor!? Colors.white : AppColors.secondaryColor,),
          SizedBox(width: SizeConfig.widthMultiplier,),
          Text(title!, style: Theme.of(context).textTheme.headline4!.copyWith(
              fontSize: 1.75 * SizeConfig.textMultiplier,
              color: hasPrimaryColor!? Colors.white : AppColors.secondaryColor
          ),),
        ],
      ),
    );
  }
}
