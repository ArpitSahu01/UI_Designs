import 'package:flutter/material.dart';
import 'package:ui_pracitice/utils/app_styles.dart';
import 'package:ui_pracitice/utils/size_config.dart';
import 'package:pie_chart/pie_chart.dart';


class StorageDetailScreen extends StatelessWidget {
   StorageDetailScreen({Key? key}) : super(key: key);

  final dataMap = <String,double>{
    'value1':3,
    'value2':1,
    'value3':3,
    'value4':3,
  };

  final colorList  = <Color>[
    kPieYellow,
    kPieGreen,
    kPieBlue,
    kPieLightBlue,
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal!*5,right: SizeConfig.blockSizeHorizontal!*5,top: SizeConfig.blockSizeHorizontal!*5,),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios_new_rounded),
                    Text("Storage Details",
                      style: kQuestrialSemiBold.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal!*5,
                      ),
                    ),
                    Icon(Icons.more_horiz),
                  ],
                ),
                SizedBox(height: SizeConfig.blockSizeVertical!*5,),
                SizedBox(
                  width: SizeConfig.blockSizeHorizontal!*40,
                  height: SizeConfig.blockSizeVertical!*20,
                  child: PieChart(
                    dataMap: dataMap,
                    chartType: ChartType.ring,
                    legendOptions: const LegendOptions(
                      showLegends: false,
                    ),
                    chartValuesOptions: const ChartValuesOptions(
                      showChartValues: false,
                    ),
                    colorList: colorList,
                  ),
                ),
                SizedBox(height: SizeConfig.blockSizeVertical!*2,),
                SizedBox(
                  height: SizeConfig.blockSizeVertical!*12,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Avaliable",
                        style: kQuestrialRegular.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal !*5.5,
                          color: kTextColorLightBlack,
                        ),
                      ),
                      Text(
                        "43.36 GB",
                        style: kQuestrialBold.copyWith(
                          color: kTextColorBlack,
                          fontSize: SizeConfig.blockSizeHorizontal !*6,
                        ),
                      ),
                      Text(
                        "Total 128 GB",
                        style: kQuestrialRegular.copyWith(
                          color: kTextColorLightBlack,
                          fontSize: SizeConfig.blockSizeHorizontal !*5.5,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: SizeConfig.blockSizeVertical!*5,),
                Indicator(title: "Design files", data: "38.66 GB", dotColor: kPieBlue, indicatorColor: kPieBlue,value: 0.6,),
                Indicator(title: "Images", data: "23.80 GB", dotColor: kPieYellow, indicatorColor: kPieYellow,value: 0.5,),
                Indicator(title: "Video", data: "12.60 GB", dotColor: kPieGreen, indicatorColor: kPieGreen,value: 0.3,),
                Indicator(title: "Documents", data: "06.57 GB", dotColor: kPieLightBlue, indicatorColor: kPieLightBlue,value: 0.6,),
                Indicator(title: "Other", data: "2.01 GB", dotColor: Colors.red, indicatorColor: Colors.red,value: 0.6,),
                SizedBox(height: SizeConfig.blockSizeVertical!*3,),
                Text(
                  "Export Details",
                  style: kQuestrialRegular.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    color: kTextColorGrey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Indicator extends StatelessWidget {

  String title;
  String data;
  double value;
  Color dotColor;
  Color indicatorColor;

  Indicator({Key? key,required this.title,required this.data,required this.dotColor,required this.indicatorColor,required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: SizeConfig.blockSizeVertical!*8,
      padding: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical!*1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: SizeConfig.blockSizeHorizontal!*2,
                height: SizeConfig.blockSizeHorizontal!*2,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: dotColor,
                ),
              ),
              SizedBox(width: 10,),
              Text(title,style: kQuestrialMedium.copyWith(
                fontSize: SizeConfig.blockSizeHorizontal!*5,
                color: kTextColorBlack,
              ),),
              Spacer(
              ),
              Container(
                width: SizeConfig.blockSizeHorizontal!*50,
                child: LinearProgressIndicator(
                  backgroundColor: indicatorColor,
                  color: kIndicatorbg,
                  value: 1-value,
                  minHeight: 5,
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.blockSizeVertical!*1.5,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal!*4.2,),
            child: Text(data,style: kQuestrialRegular.copyWith(
              fontSize: SizeConfig.blockSizeHorizontal!*3.5,
            ),),
          ),
        ],
      ),
    );
  }
}

