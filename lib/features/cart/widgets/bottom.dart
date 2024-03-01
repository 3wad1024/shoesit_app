import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoezy_app/core/functions/nav.dart';
import 'package:shoezy_app/core/utils/app_colors.dart';
import 'package:shoezy_app/core/utils/styles.dart';
import 'package:shoezy_app/core/widgets/custom_button.dart';
import 'package:shoezy_app/features/payment/payment.dart';

class BuyButtom extends StatefulWidget {
  const BuyButtom({super.key});

  @override
  State<BuyButtom> createState() => _BuyButtomState();
}

class _BuyButtomState extends State<BuyButtom> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
         // color:   Color.fromARGB(255, 212, 210, 210),
         color: Colors.white,
          
        ),
        
        
        child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      
                      children: [
                        Text(
                          'Total',
                          style: getBodyStyle(),
                        ),
                        const Spacer(),
                         Text(
                          '1200',
                          style: getBodyStyle(),
                        ),
                      ],
                    ),
                    const Gap(10),
                    CustomButton(
                      color: AppColors.blackColor,
                      width: 400,
                      text:'Buy now',
      
                       onTap: (){
                        pushTo(context, PayView());
                       },
                       
                       )
                  ],
                ),
      ),
    );
  }
}