import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tz/constants/constant_colors.dart';

import '../widgets/container_destination.dart';
import '../../../widgets/default_text.dart';
import '../../../widgets/icon_text_widget.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(Icons.arrow_back_ios_new),
                  SizedBox(width: 2.w,),
                  DefaultText(text: 'Бронирование',),
                ],
              ),
              SizedBox(height: 3.h,),
              const ContainerDestination(
                  icon: Icons.keyboard_arrow_down_outlined,
                  text:'Казань - Нижнекамск',
                  text2: '14.05.2023, 1 пассажир, 514.80 ₽'),
              SizedBox(height: 3.h,),
              Text('Выберите места на схеме автобуса', style: TextStyle(color: AppColors.smallText),),
              SizedBox(height: 1.h,),
              RichText(
                text: TextSpan(
                  text: "Автобус:",
                  style: TextStyle(fontSize: 0.28.dp,color: AppColors.backgroundColor),
                  children: <TextSpan>[
                    TextSpan(text: " ХЕНДАЙ(43)", style: TextStyle(fontSize: 0.28.dp, color: AppColors.smallText)),
                  ],
                ),
              ),
              SizedBox(height: 3.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconTextWidget(icon: Icons.check_box_outline_blank_rounded, text: 'свободное', sizedH: 0, sizedW: 1.w),
                  SizedBox(width: 5.w,),
                  Row(
                    children: [
                      ImageIcon(AssetImage('assets/icons/grey.png')),
                      Text('занятое')
                    ],
                  ),
                ],
              ),
              SizedBox(height: 3.h,),
              Container(
                height: 60.h,
                width: 100.w,
                padding: EdgeInsets.only(top: 4.h,left: 6.w,right: 6.w,),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(60)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment:MainAxisAlignment.start,
                  children: [
                    Image(image: AssetImage('assets/icons/car.jpg'),),
                    SizedBox(height: 2.h,),

                  ],
                ),
              ),
              SizedBox(
                height: 6.h,
                width: 90.w,
                child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.backgroundColor,
                      foregroundColor: Colors.white
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Выбрано место: 4'),
                      Text('Далее')
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}