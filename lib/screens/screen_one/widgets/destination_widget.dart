import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../constants/constant_colors.dart';

class DestinationWidget extends StatelessWidget {

  final String text;
  final String text2;


  const DestinationWidget({super.key, required this.text, required this.text2});
  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
