import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tz/constants/constant_colors.dart';

class ContainerDestinationTwo extends StatelessWidget {

  final IconData icon;
  final IconData icon2;
  final String text;
  final String text2;

  const ContainerDestinationTwo({super.key, required this.icon, required this.text, required this.text2, required this.icon2});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon),
              SizedBox(width: 2.h,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(text, style: TextStyle(fontSize: 0.25.dp),),
                  Text(text2, style: TextStyle(color: AppColors.smallText),),
                ],
              ),
            ],
          ),
          Icon(icon2,),
        ],
      ),
    );
  }
}