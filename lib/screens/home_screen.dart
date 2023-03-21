import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_pracitice/screens/widgets/customContainer.dart';
import 'package:ui_pracitice/utils/size_config.dart';

import '../utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);

   int num = 0;

   List<Color> folderColors = [
     kLightBlue,
     kLightGreen,
     kLightRed,
     kLightYellow,
     kLightBlue,
     kLightGreen,
     kLightRed,
     kLightYellow,
   ];

   List<Color> textColors = [
     kBlue,
     kGreen,
     kRed,
     kYellow,
     kBlue,
     kGreen,
     kRed,
     kYellow,

   ];

   List<String> folders = [
     "assets/folder_icon_blue.svg",
     "assets/folder_icon_green.svg",
     "assets/folder_icon_red.svg",
     "assets/folder_icon_yellow.svg",
     "assets/folder_icon_blue.svg",
     "assets/folder_icon_green.svg",
     "assets/folder_icon_red.svg",
     "assets/folder_icon_yellow.svg",
   ];

   List<String> dots = [
     "assets/more_vertical_icon_blue.svg",
     "assets/more_vertical_icon_green.svg",
     "assets/more_vertical_icon_red.svg",
     "assets/more_vertical_icon_yellow.svg",
     "assets/more_vertical_icon_blue.svg",
     "assets/more_vertical_icon_green.svg",
     "assets/more_vertical_icon_red.svg",
     "assets/more_vertical_icon_yellow.svg",
   ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      floatingActionButton: SizedBox(
        height: 60,width: 60,
        child: FloatingActionButton(
          onPressed: (){},
          backgroundColor: kPurpleColor,
          child: Icon(Icons.add,color: Colors.white,),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(left: kPaddigHorizontal,right: kPaddigHorizontal, top: kPaddingVertical),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Your dribbbox",
                      style: kQuestrialSemiBold.copyWith(
                        color: kBlackColor,
                        fontSize: SizeConfig.blockSizeHorizontal!*6,
                      ),
                    ),
                    SvgPicture.asset("assets/menu_icon.svg"),
                  ],
                ),
                SizedBox(height: SizeConfig.blockSizeVertical!*4,),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      borderSide: const BorderSide(
                        width: 1,
                        color: kGeryColor,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      borderSide: const BorderSide(
                        width: 1,
                        color: kGeryColor,
                      ),
                    ),
                    prefixIcon: Container(
                        width: 24,
                        height: 24,
                        alignment: Alignment.center,
                        child: SvgPicture.asset("assets/search_icon.svg"),
                    ),
                    hintText: "Search folder",
                    hintStyle: kQuestrialMedium.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                      color: kGeryColor
                    ),
                  ),
                  style:  kQuestrialMedium.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                      color: kGeryColor
                  ),
                ),
                SizedBox(height: SizeConfig.blockSizeVertical!*4,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent",
                      style: kQuestrialSemiBold.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal! *5,
                        color: kLightBlackColor
                      ),
                    ),
                    SizedBox(width: SizeConfig.blockSizeHorizontal! *3,),
                    SvgPicture.asset("assets/arrow_down_icon.svg"),
                    Spacer(),
                    SvgPicture.asset("assets/sort_icon.svg"),
                  ],
                ),
                SizedBox(height: SizeConfig.blockSizeVertical!*3,),

                SizedBox(
                  height: SizeConfig.blockSizeVertical! *70,
                  child: GridView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: folders.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: SizeConfig.blockSizeHorizontal!*2,
                    crossAxisSpacing: SizeConfig.blockSizeHorizontal!*2,
                  ), itemBuilder: (context,index){
                  return CustomContainer(color: textColors[index],lightColor: folderColors[index],folderPath: folders[index],dotsPath: dots[index],);
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
