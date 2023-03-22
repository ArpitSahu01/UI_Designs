import 'package:flutter/material.dart';
import 'package:ui_pracitice/utils/app_styles.dart';
import 'package:ui_pracitice/utils/size_config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: SizeConfig.blockSizeVertical!*4),
                    width: SizeConfig.screenWidth,
                      child: Image.asset("assets/splashAssets/splashScreen.png",fit: BoxFit.cover,),
                  ),
                  Positioned(
                    top: SizeConfig.blockSizeVertical!*43,
                    left: SizeConfig.blockSizeHorizontal!*5,
                    child: Text(
                      "Welcome to",
                      style: kQuestrialRegular.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal!*6,
                      ),
                    ),
                  ),
                  Positioned(
                    top: SizeConfig.blockSizeVertical!*46,
                    left: SizeConfig.blockSizeHorizontal!*5,
                    child: Text(
                      "Dribbox",
                      style: kQuestrialBold.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal!*12,
                      ),
                    ),
                  ),
                  Positioned(
                    top: SizeConfig.blockSizeVertical!*54,
                    left: SizeConfig.blockSizeHorizontal!*5,
                    child: SizedBox(
                      width: SizeConfig.screenWidth!*0.8,
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Congue bibendum pellentesque mauris, nibh senectus dignissim euismod diam. Sed arcu eget et, id arcu ultricies scelerisque nisl.",
                        style: kQuestrialRegular.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal!*4,
                          color: kTextColorGrey,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: SizeConfig.blockSizeVertical!*67,
                    left: SizeConfig.blockSizeHorizontal!*5,
                    child: SizedBox(
                      width: SizeConfig.screenWidth!*0.8,
                      child: Text(
                        "Join for free",
                        style: kQuestrialRegular.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal!*4,
                          color: kTextColorGrey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Button1(),
                  Button2(),
                ],
              ),
      SizedBox(height: SizeConfig.blockSizeVertical!*6,),
      Text(
        "Use social Login",
        style: kQuestrialRegular.copyWith(
          fontSize: SizeConfig.blockSizeHorizontal!*3.5,
          color: kTextColorGrey,
        ),),
              SizedBox(height: SizeConfig.blockSizeVertical!*2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(

                    child: Image.asset("assets/splashAssets/instagramLogo.png",
                      height: SizeConfig.blockSizeHorizontal!*6,
                      width: SizeConfig.blockSizeHorizontal!*6,
                      fit: BoxFit.cover,
                    ),),
                  SizedBox(width: 10,),
                  SizedBox(
                    child: Image.asset("assets/splashAssets/facebookLogo.png",
                      height: SizeConfig.blockSizeHorizontal!*6,
                      width: SizeConfig.blockSizeHorizontal!*6,
                      fit: BoxFit.cover,
                    ),),
                ],
              ),
              SizedBox(height: SizeConfig.blockSizeVertical!*2,),

              Text(
                "Create an account",
                style: kQuestrialRegular.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal!*3.5,
                  color: kTextColorGrey,
                ),),
            ],
          ),
        ),
      ),
    );
  }
}

class Button1 extends StatelessWidget {
  const Button1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        backgroundColor: MaterialStateProperty.all(kLightBlue),
        elevation: MaterialStateProperty.all(0),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        )),
        padding: MaterialStateProperty.all(
    EdgeInsets.symmetric(
        horizontal: SizeConfig.blockSizeHorizontal!*10,
        vertical: SizeConfig.blockSizeVertical!*1.5,
      ),
        ),
      ),

        onPressed: (){},
        child: Row(
      children: [
        Text(
          "Smart id",
          style: kQuestrialSemiBold.copyWith(
            fontSize: SizeConfig.blockSizeHorizontal!*4,
            color: kBlue,
          ),
        ),
        SizedBox(width: 5,),
        Image.asset("assets/splashAssets/fingerscan.png"),
      ],
    ));
  }
}


class Button2 extends StatelessWidget {
  const Button2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          backgroundColor: MaterialStateProperty.all(kBlue),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          )),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(
              horizontal: SizeConfig.blockSizeHorizontal!*10,
              vertical: SizeConfig.blockSizeVertical!*1.5,
            ),
          ),
        ),

        onPressed: (){},
        child: Row(
          children: [
            Text(
              "Sign In",
              style: kQuestrialSemiBold.copyWith(
                fontSize: SizeConfig.blockSizeHorizontal!*4,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 5,),
            Icon(Icons.arrow_forward,color: Colors.white,),
          ],
        ));
  }
}




