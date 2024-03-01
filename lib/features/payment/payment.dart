import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoezy_app/core/utils/app_colors.dart';
import 'package:shoezy_app/core/utils/styles.dart';
import 'package:shoezy_app/core/widgets/custom_text_form.dart';

class PayView extends StatelessWidget {
  const PayView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      bottomNavigationBar:
         SizedBox(
        height: 110,
        width: double.infinity,
        child: Column(
          children: [
               Row(
                        
                        children: [
                          Gap(20),
                          Text(
                            'Total',
                            style: getBodyStyle(),
                          ),
                          const Spacer(),
                           Text(
                            '1200',
                            style: getBodyStyle(),
                          ),
                          Gap(20)
                        ],
                      ),
                      const Gap(10),
            Container(
              padding: EdgeInsets.all(22),
                    
                    
                    decoration: BoxDecoration(
                      
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                      color: AppColors.blueColor,
            
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Pay',
                          style: getTitleStyle(color: AppColors.whiteColor),
                        ),
                        const Spacer(),
                        Icon(Icons.arrow_forward_ios_outlined,color: AppColors.whiteColor,),
            
                        Icon(Icons.arrow_forward_ios_outlined,color: AppColors.whiteColor,),
                        Icon(Icons.arrow_forward_ios_outlined,color: AppColors.whiteColor,),
            
            
                      ],
                    ),
                  ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
         leading:  IconButton(onPressed: (){Navigator.pop(context);},
           icon: Icon(Icons.arrow_back_ios_new_outlined,color: AppColors.blackColor,size: 25,)),
        title: Text(
          'Payment Method',
          style: getTitleStyle(),
        ),
        centerTitle: true,

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Payment',
                  style: getTitleStyle(),
                ),
                const Gap(10),
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(10),
            
                  ),
                  child: Row(
                  children: [
                    Image.asset('assets/cridet.png'),
                    const Gap(10),
                    Text(
                      'Credit Card',
                      style: getBodyStyle(),
                    ),
                    const Spacer(),
                    IconButton(onPressed: (){}, icon:Icon( Icons.check_circle_outline_rounded)),
            
                  ],
                  ),
                ),
                const Gap(10),
            
                 Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(10),
            
                  ),
                  child: Row(
                  children: [
                    Image.asset('assets/paypal.png'),
                    const Gap(10),
                    Text(
                      'Pay Pal',
                      style: getBodyStyle(),
                    ),
                    const Spacer(),
                    IconButton(onPressed: (){}, icon:Icon( Icons.check_circle_outline_rounded)),
            
                  ],
                  ),
                ),
                const Gap(10),
            
                 Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(10),
            
                  ),
                  child: Row(
                  children: [
                    Image.asset('assets/gpay.png'),
                    const Gap(10),
                    Text(
                      'Google Pay',
                      style: getBodyStyle(),
                    ),
                    const Spacer(),
                    IconButton(onPressed: (){}, icon:Icon( Icons.check_circle_outline_rounded)),
            
                  ],
                  ),
                ),
                const Gap(30),
                Image.asset('assets/visa.png'),
                CustomTextForm(con: TextEditingController(), 
                name:'address and pincode' , lines: 3, sidecolor: AppColors.blackColor, textcolor:AppColors.blackColor),
             
            
        
            
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}