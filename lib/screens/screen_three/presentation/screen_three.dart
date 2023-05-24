import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tz/constants/constant_colors.dart';
import 'package:tz/screens/screen_four/widgets/bottom_nav_bar.dart';
import 'package:tz/screens/screen_three/widgets/container_destination_three.dart';

import '../widgets/container_destination_two.dart';


class ScreenThree extends StatelessWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top:3.h,left: 5.w,right: 5.w),
              child: const ContainerDestinationTwo(
                  icon: Icons.arrow_back_ios_new,
                  text: 'Казань-Нижнекамск',
                  text2: '14.05.2023, 1 пассажир',
                  icon2: Icons.layers_outlined),
            ),
            SizedBox(height: 3.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            color: Colors.grey,
                            width: 3.0
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        const Text('Всё'),
                        SizedBox(height: 1.h,),
                        const Text('112'),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            color: Colors.grey,
                            width: 3.0
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        const Text('С попутчиками'),
                        SizedBox(height: 1.h,),
                        const Text('105'),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            color: Colors.green,
                            width: 3.0
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        const Text('На автобусе'),
                        SizedBox(height: 1.h,),
                        const Text('7'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.h,),
            Padding(
              padding: EdgeInsets.only(left: 5.w,right: 5.w),
              child: Container(
                height: 8.h,
                width: 140.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 5.w,right: 5.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ImageIcon(const AssetImage('assets/icons/bus.png',),color: AppColors.backgroundColor,),
                          SizedBox(width: 3.w,),
                          Text('OOO "БУРЕВЕСТНИК"',style: TextStyle(color: const Color(0xff515150),fontWeight: FontWeight.w500,fontSize: 0.30.dp),),
                        ],
                      ),
                      Icon(Icons.qr_code,color: AppColors.backgroundColor,),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            const DestinationWidgetThree(text: 'Казань', text2: '27 мая, 15:00'),
            SizedBox(height: 3.h,),
            const DestinationWidgetThree(text: 'Казань', text2: '27 мая, 15:00'),

          ],
        ),
      ),
    ),
    bottomNavigationBar: BottomNavBarUS()
    ,);
  }
}