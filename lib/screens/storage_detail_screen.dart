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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
