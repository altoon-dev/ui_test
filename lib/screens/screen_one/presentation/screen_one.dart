import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tz/constants/constant_colors.dart';
import 'package:tz/screens/screen_one/widgets/destination_widget.dart';
import '../widgets/default_divider.dart';
import '../../../widgets/default_text.dart';
import '../../../widgets/icon_text_widget.dart';


class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.arrow_back_ios_new),
                  SizedBox(width: 2.w,),
                  DefaultText( text: 'Бронирование',),
                ],
              ),
              SizedBox(height: 5.h,),
              DefaultText(text: '14 мая 2023',),
              SizedBox(height: 3.h,),
              DestinationWidget(text: 'Казань', text2: '27 мая, 15:00  '),
              SvgPicture.asset('assets/icons/Line.svg', height: 5.h,width: 3.w,),
              DestinationWidget(text: 'Нижнекамск', text2: '28 мая, 15:00  '),
              SizedBox(height: 3.h,),
              const DefaultDivider(),
              SizedBox(height: 1.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.payment),
                      SizedBox(width: 2.w,),
                      Text('Всего за 1 пассажира:', style: TextStyle(fontSize: 0.25.dp,color: AppColors.smallText),),
                    ],
                  ),
                  Text('514.80 ₽', style: TextStyle(fontSize: 0.33.dp,color: AppColors.backgroundColor, fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 1.h,),
              const DefaultDivider(),
              SizedBox(height: 3.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const ImageIcon(AssetImage('assets/icons/bus.png')),
                      SizedBox(width: 3.w,),
                      Text('OOO "БУРЕВЕСТНИК"',style: TextStyle(color: Color(0xff515150),fontWeight: FontWeight.w500,fontSize: 0.30.dp),),
                    ],
                  ),
                  const Icon(Icons.arrow_forward_ios),
                ],
              ),
              SizedBox(height: 3.h,),
              IconTextWidget(icon: Icons.wifi_off_sharp, text: 'Нет Wi-Fi', sizedH: 0, sizedW: 3.w,),
              IconTextWidget(icon: Icons.offline_bolt, text: 'Нет розеток у каждого кресла', sizedH: 0,sizedW: 3.w,),
              SizedBox(height: 15.h,),
              SizedBox(
                height: 6.h,
                width: 90.w,
                child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.backgroundColor,
                      foregroundColor: Colors.white,
                    ),
                    child: Text('Продолжить')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}