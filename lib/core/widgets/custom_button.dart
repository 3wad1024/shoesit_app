
import 'package:flutter/material.dart';
import 'package:shoezy_app/core/utils/app_colors.dart';
import 'package:shoezy_app/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,required this.text,required this.onTap,this.width=100,this.style,this.color});
  final String text;
  final Function()? onTap; 
  final double width;
  final TextStyle? style;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return    GestureDetector(
            onTap: onTap,
             child: Container(
              width: width,
              height: 50,
              alignment: Alignment.center,
              decoration:BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(15),
                
             
              ),
              child: Text(
                '$text',
              style:getBodyStyle(color: AppColors.whiteColor)
              ),
                       ),
           );
  }
}