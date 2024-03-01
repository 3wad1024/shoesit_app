
import 'package:flutter/material.dart';
import 'package:shoezy_app/core/utils/app_colors.dart';
import 'package:shoezy_app/core/utils/styles.dart';

class BrandLogo extends StatelessWidget {
  const BrandLogo({
    super.key,
    required this.text,
    required this.image,
    
  });
  final String? text;
  final String?image;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
          color: AppColors.blackColor,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                '$image',
                height: 130,
                
                fit: BoxFit.cover,
              )),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$text',
                  style:
                      getBodyStyle(fontSize: 16, color: AppColors.whiteColor),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
