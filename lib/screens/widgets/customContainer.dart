import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_pracitice/utils/app_styles.dart';
import 'package:ui_pracitice/utils/size_config.dart';

class CustomContainer extends StatelessWidget {
  Color lightColor;
  Color color;
  String folderPath;
  String dotsPath;


  CustomContainer({Key? key,required this.lightColor,required this.color,required this.folderPath,required this.dotsPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0.5 * kPaddigHorizontal,vertical: 1.2 * kPaddigHorizontal),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kBorderRadius),
        color: lightColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                folderPath,
                width: SizeConfig.blockSizeHorizontal! * 12,
                height: SizeConfig.blockSizeHorizontal! * 12,
              ),
              SvgPicture.asset(
                  dotsPath,
                width: SizeConfig.blockSizeHorizontal! * 6,
                height: SizeConfig.blockSizeHorizontal! * 6,
              ),
            ],
          ),
          const Spacer(),
          Text("Mobile apps",style: kQuestrialSemiBold.copyWith(
            fontSize: SizeConfig.blockSizeHorizontal! * 5,
            color: color,
          ),),
          const SizedBox(height: 10,),
          Text("December 20.2020",style: kQuestrialRegular.copyWith(
            fontSize: SizeConfig.blockSizeHorizontal! * 4,
            color: color,
          ),
          ),
        ],
      ),
    );
  }
}
