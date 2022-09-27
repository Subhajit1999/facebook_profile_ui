import 'package:facebook_profile_ui/configs/size_config.dart';
import 'package:facebook_profile_ui/shared/custom_appbar.dart';
import 'package:facebook_profile_ui/shared/icon_title_button.dart';
import 'package:facebook_profile_ui/shared/rounded_icon_button.dart';
import 'package:facebook_profile_ui/theme/colors.dart';
import 'package:facebook_profile_ui/utils/media.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<String> friends = ["Sourav Das", "Tomal Mandal", "Debajit Roy", "Sayani Mitr", "Niyati Barman", "Avijit Bakshi"];
  List<int> imageIndex = [23,24,25,26,27,28];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.custombBackgroundColor,
      appBar: FacebookAppBar(),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(2 * SizeConfig.heightMultiplier),
            decoration: BoxDecoration(
            ),
            child: Column(
              children: [
                // Header Area
                _profileHeader(),
                SizedBox(height: 1.5 * SizeConfig.heightMultiplier,),
                // Image area
                _profileImageArea(),
                // Name Area
                _nameArea(),
                SizedBox(height: SizeConfig.heightMultiplier,),
                // Bio Area
                _bioArea(),
                SizedBox(height: SizeConfig.heightMultiplier,),
                // Friends Area
                _friends(),
              ],
            ),
          ),
        )
    );
  }

  Widget _profileHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text("Subhajit Kar", style: Theme.of(context).textTheme.headline4!.copyWith(
                fontSize: 3 * SizeConfig.textMultiplier
            ),),
            Icon(Icons.arrow_drop_down_rounded, size: 3.5 * SizeConfig.heightMultiplier,),
          ],
        ),
        RoundedIconButton(icon: AppMedia.profileEdit),
      ],
    );
  }
  
  Widget _profileImageArea() {
    return Container(
      child: Stack(
        alignment: Alignment.bottomCenter,
        clipBehavior: Clip.none,
        children: <Widget>[
          Row(children: <Widget>[
            Expanded(
              child: Stack(
                children: [
                  Container(
                  height: 25 * SizeConfig.heightMultiplier,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.all(Radius.circular(1.25 * SizeConfig.heightMultiplier)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage('https://picsum.photos/id/1002/400/800')
                      )
                  ),
            ),
                  Positioned(
                    bottom: 1.25 * SizeConfig.heightMultiplier,
                    right: 1.25 * SizeConfig.heightMultiplier,
                    child: RoundedIconButton(icon: AppMedia.camera),
                  )
                ],
              ),)
          ],
          ),
          Positioned(
            top: 12.5 * SizeConfig.heightMultiplier,
            child: Stack(
              children: [
                Container(
                  height: 21.25 * SizeConfig.heightMultiplier,
                  width: 21.25 * SizeConfig.heightMultiplier,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade400,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage('http://cdn.ppcorn.com/us/wp-content/uploads/sites/14/2016/01/Mark-Zuckerberg-pop-art-ppcorn.jpg'),
                      ),
                      border: Border.all(
                          color: Colors.white,
                          width: SizeConfig.widthMultiplier
                      )
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: RoundedIconButton(icon: AppMedia.camera),
                )
              ],
            ),
          ),
        ],)
    );
  }

  Widget _nameArea() {
    return Padding(
      padding: EdgeInsets.only(top: 10 * SizeConfig.heightMultiplier),
      child: Container(
        padding: EdgeInsets.all(SizeConfig.heightMultiplier),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(1.5 * SizeConfig.heightMultiplier))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Subhajit Kar", style: Theme.of(context).textTheme.headline4!.copyWith(
                fontSize: 3.25 * SizeConfig.textMultiplier
            ),),
            SizedBox(height: SizeConfig.heightMultiplier,),
            Text("When you have a dream, you've got to grab it and never let go.", style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 2 * SizeConfig.textMultiplier,
                color: AppColors.matteBlackColor
            ), textAlign: TextAlign.center,),
            SizedBox(height: 2.25 * SizeConfig.heightMultiplier,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconTitledButton(icon: Icons.add_circle, title: "Add to story", hasPrimaryColor: true,),
                IconTitledButton(icon: Icons.edit, title: "Edit profile", hasPrimaryColor: false,),
                IconTitledButton(icon: Icons.more_horiz_rounded, title: "", hasPrimaryColor: false,),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _bioArea() {
    return Container(
      padding: EdgeInsets.all(SizeConfig.heightMultiplier),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(1.5 * SizeConfig.heightMultiplier))
      ),
      child: Column(
        children: [
          _bioTextRow(AppMedia.suitcase, "Flutter Developer at ", "RedoQ India Pvt Ltd"),
          _bioTextRow(AppMedia.suitcase, "Former Mobile App Developer at ", "STREE"),
          _bioTextRow(AppMedia.education, "Studied (B.Tech) in Computer Science and Engineering (CSE) at ", "Neotia Institute of Technology, Management,"
              "and Science"),
          _bioTextRow(AppMedia.education, "Went to ", "Uluberia High School(H.S)"),
          _bioTextRow(AppMedia.home, "Lives in ", "Kolkata"),
          _bioTextRow(AppMedia.location, "From ", "Uluberia"),
          Wrap(
            children: ["Learning to Code", "Coding", "Blogging", "Learning", "Video Games", "Listening to Music"].map((item) => _HobbyItem(item)).toList(),
          ),
          SizedBox(height: 2 * SizeConfig.heightMultiplier,),
          Container(
            padding: EdgeInsets.all(1.5 * SizeConfig.heightMultiplier),
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(0.25),
              borderRadius: BorderRadius.all(Radius.circular(SizeConfig.heightMultiplier))
            ),
            child: Text("Edit public details", style: Theme.of(context).textTheme.subtitle1!.copyWith(
              color: AppColors.primaryColor,
              fontSize: 2 * SizeConfig.textMultiplier
            ),),
          )
        ],
      ),
    );
  }

  Widget _bioTextRow(String? icon, String? text1, String? text2) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.25 * SizeConfig.heightMultiplier, horizontal: SizeConfig.widthMultiplier),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ImageIcon(
            AssetImage(icon!), color: Colors.grey, size: 2.5 * SizeConfig.heightMultiplier,
          ),
          SizedBox(width: 4 * SizeConfig.widthMultiplier,),
          // Text(text!, style: Theme.of(context).textTheme.bodyText1!.copyWith(
          //   fontSize: 2 * SizeConfig.textMultiplier,
          // ),),
          Expanded(
            child: RichText(
              maxLines: 2,
              text: TextSpan(
                text: text1,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 1.75 * SizeConfig.textMultiplier,
                ),
                children: <TextSpan> [
                  TextSpan(
                    text: text2,
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontSize: 1.85 * SizeConfig.textMultiplier,
                    ),
                  ),
                ]
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _HobbyItem(String? text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier),
      child: ActionChip(
        elevation: 0,
          padding: EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier, horizontal: 2 * SizeConfig.widthMultiplier),
          label: Text(text!, style: Theme.of(context).textTheme.headline4!.copyWith(
            fontSize: 1.75 * SizeConfig.textMultiplier,
            color: AppColors.matteBlackColor
          ),),
          backgroundColor: Colors.grey.shade200,
          onPressed: () {}
      ),
    );
  }

  Widget _friends() {
    return Container(
      padding: EdgeInsets.all(1.5 * SizeConfig.heightMultiplier),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(1.5 * SizeConfig.heightMultiplier))
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("Friends", style: Theme.of(context).textTheme.headline4!.copyWith(
                    fontSize: 2.25 * SizeConfig.textMultiplier
                  ),),
                  SizedBox(height: 0.5 * SizeConfig.heightMultiplier,),
                  Text("542 friends", style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontSize: 1.75 * SizeConfig.textMultiplier,
                    color: AppColors.darkGreyColor
                  ),),
                ],
              ),
              Text("Find Friends", style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontSize: 2 * SizeConfig.textMultiplier,
                color: AppColors.primaryColor
              ),)
            ],
          ),
          Wrap(
            children: [0,1,2,3,4,5].map((index) => _friendItem("https://picsum.photos/id/${imageIndex[index]}/200/300", friends[index])).toList(),
          )
        ],
      ),
    );
  }
  
  Widget _friendItem(String? imageUrl, String? name) {
    return Container(
      // height: 100,
      width: 10.75 * SizeConfig.heightMultiplier,
      margin: EdgeInsets.all(6),
      child:
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 10.75 * SizeConfig.heightMultiplier,
            height: 10.75 * SizeConfig.heightMultiplier,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.all(Radius.circular(SizeConfig.heightMultiplier)),
              image: DecorationImage(
                image: NetworkImage(imageUrl!),
                fit: BoxFit.cover
              )
            ),
          ),
          SizedBox(height: 0.75 * SizeConfig.heightMultiplier,),
          Text(name!, style: Theme.of(context).textTheme.subtitle1!.copyWith(
            color: AppColors.secondaryColor,
            fontSize: 1.85 * SizeConfig.textMultiplier
          ),)
        ],
      ),
    );
  }
}
