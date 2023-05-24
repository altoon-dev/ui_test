import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tz/constants/constant_colors.dart';

import '../../screen_one/widgets/destination_widget.dart';

class ContainerDestinationFour extends StatelessWidget {
  const ContainerDestinationFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:3.h,left: 5.w,right: 5.w,bottom: 3.h),
      height: 44.h,
      width: 90.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 3.w,right: 3.w),
              height: 8.h,
              width: 90.w,
              decoration: BoxDecoration(
                color: Color(0xffF9F9F9),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/kerek.jpg'),
                      ),
                      SizedBox(width: 3.w,),
                      Text('Айдар',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 0.30.dp),),
                      SizedBox(width: 2.w,),
                      Text.rich(
                        TextSpan(
                          children: [
                            WidgetSpan(child: Icon(Icons.star, color: Color(0xffFFAD2E),),),
                            TextSpan(text: ' 4.5'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.call_rounded,color: AppColors.backgroundColor),
                      SizedBox(width: 1.w,),
                      Icon(Icons.messenger_rounded, color: AppColors.backgroundColor,)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 3.h,),
            Padding(
              padding:  EdgeInsets.only(left: 5.w),
              child: DestinationWidget(text: 'Казань', text2: '27 мая, 15:00  '),
            ),
            Row(
              children: [
                SvgPicture.asset('assets/icons/Line.svg', height: 5.h,width: 3.w,),
                Padding(
                  padding:  EdgeInsets.only(left: 10.w),
                  child: Text('200 км.',style: TextStyle(color: AppColors.smallText),),
                )
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(left: 5.w),
              child: DestinationWidget(text: 'Нижнекамск', text2: '28 мая, 15:00  '),
            ),
            SizedBox(height: 3.h,),
            SizedBox(
              height: 6.h,
              width: 90.w,
              child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFF5959),
                    foregroundColor: Colors.white,
                  ),
                  child: Text('Отменить бронь')),
            ),
          ],
        ),
      ),
    );
  }
}
