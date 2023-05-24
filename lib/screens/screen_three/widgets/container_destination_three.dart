import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../constants/constant_colors.dart';
import '../../screen_one/widgets/destination_widget.dart';

class DestinationWidgetThree extends StatelessWidget {

  final String text;
  final String text2;


  const DestinationWidgetThree({super.key, required this.text, required this.text2});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5.w,right: 5.w),
      height: 25.h,
      width: 90.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.circle_sharp),
                  SizedBox(width: 3.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(text, style: TextStyle(fontSize: 0.28.dp),),
                      SizedBox(width: 2.w,),
                      Row(
                        children: [
                          Text(text2,style: TextStyle(color: AppColors.smallText)),
                          Icon(Icons.circle_sharp, size: 5, color: Colors.grey,),
                          Text('  Автовокзал',style: TextStyle(color: AppColors.smallText))
                        ],
                      )
                    ],
                  )
                ],
              ),
              Text('514.80 ₽',style: TextStyle(color: AppColors.backgroundColor),
              )
            ],
          ),
          SvgPicture.asset('assets/icons/Line.svg', height: 5.h,width: 3.w,),
          DestinationWidget(text: 'Нижнекамск', text2: '28 мая, 15:00  '),
          SizedBox(height: 3.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ImageIcon(AssetImage('assets/icons/bus.png',),color: AppColors.backgroundColor,),
                  SizedBox(width: 3.w,),
                  Text('OOO "БУРЕВЕСТНИК"',style: TextStyle(color: Color(0xff515150),fontWeight: FontWeight.w500,fontSize: 0.30.dp),),
                ],
              ),
              Icon(Icons.qr_code,color: AppColors.backgroundColor,),
            ],
          ),
        ],
      ),
    );
  }
}
