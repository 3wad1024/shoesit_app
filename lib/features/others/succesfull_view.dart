import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoezy_app/core/utils/app_colors.dart';
import 'package:shoezy_app/core/utils/styles.dart';
import 'package:shoezy_app/core/widgets/custom_button.dart';

class SuccesfullView extends StatelessWidget {
  const SuccesfullView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(backgroundColor: AppColors.blackColor,),
      
        body:
        
         Container(
        
          
        
         
          decoration: BoxDecoration(
             borderRadius:const BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
              ),
        
              color: AppColors.whiteColor),
          child: Padding(
        
            padding: const EdgeInsets.all(7),
            child: Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/succesfull.png'),
                  
                  const Gap(50),
                  Text(
                    'Order Succesfull',
                    style: getTitleStyle(),
                      
                  ),
                  const Gap(20),
                  Text(
                    'Receipt',
                    style: getBodyStyle(),
                  ),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     
                      
                      Column(
                        children: [
                          FloatingActionButton( 
                            mini: true,
                            onPressed: (){},
                            backgroundColor:const  Color(0xff0F97A9),
                            child: Icon(
                              Icons.email,
                              color: AppColors.whiteColor,
                              )
                            ),
                          
                      Text(
                        'email',
                        style: getBodyStyle(),
                        )
                        ],
                      ),
                      const Gap(30),
                      Column(
                        children: [
                           FloatingActionButton( 
                            mini: true,
                            onPressed: (){},
                            backgroundColor:const  Color(0xff0F97A9),
                            child: Icon(
                              Icons.sms,
                              color: AppColors.whiteColor,
                              )
                            ),
                          
                      Text(
                        'sms',
                        style: getBodyStyle(),
                        )
                        ],
                      ),
                      const Gap(30),
                       Column(
                        children: [
                           FloatingActionButton( 
                            mini: true,
                            onPressed: (){},
                            backgroundColor:const  Color(0xff0F97A9),
                            child: Icon(
                              Icons.print,
                              color: AppColors.whiteColor,
                              )
                            ),
                          
                      Text(
                        'print',
                        style: getBodyStyle(),
                        )
                        ],
                      ),

                    ],
                  ),
                 const Gap(90),
                 CustomButton(text: 'Done', onTap: (){}, width: 200,)
                      
               
                ],
              ),
            ),
          ),
        ));
  }
}