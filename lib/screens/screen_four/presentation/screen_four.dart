import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tz/constants/constant_colors.dart';
import 'package:tz/screens/screen_four/widgets/app_bar_widget.dart';
import 'package:tz/screens/screen_four/widgets/bottom_nav_bar.dart';
import 'package:tz/screens/screen_four/widgets/container_destination_four.dart';
import 'package:badges/badges.dart' as badges;


class ScreenFour extends StatelessWidget {
  const ScreenFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 5.w,right: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 4.h,),
              Text('Маршрут',style: TextStyle(color: Color(0xffDADADA), fontSize: 0.28.dp),),
              SizedBox(height: 3.h,),
              ContainerDestinationFour(),
              SizedBox(height: 3.h,),
              Text('Пассажиры 2/3',style: TextStyle(color: Color(0xffDADADA), fontSize: 0.28.dp),),
              SizedBox(height: 2.h,),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left:2.w,top: 1.h,bottom: 1.h),
                    height: 7.5.h,
                    width: 43.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(backgroundImage: AssetImage('assets/images/kerek.jpg'),),
                        SizedBox(width: 1.w,),
                        Text('Место свободно'),
                      ],
                    ),
                  ),
                  SizedBox(width: 3.w,),
                  Container(
                    padding: EdgeInsets.only(left:2.w,top: 1.h,bottom: 1.h),
                    height: 7.5.h,
                    width: 43.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(backgroundImage: AssetImage('assets/images/kerek.jpg'),),
                        SizedBox(width: 1.w,),
                        Column(
                          children: [
                            Text('Ronald Richards'),
                            Text('2 места')
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 2.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Схема рассадки в салоне'),
                  SizedBox(width: 1.w,),
                  Icon(Icons.keyboard_arrow_down_outlined,color: Colors.grey,)
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xffF5F5F5),
      bottomNavigationBar: BottomNavBarUS(),
    );
  }
}