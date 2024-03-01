import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoezy_app/core/utils/app_colors.dart';
import 'package:shoezy_app/core/utils/styles.dart';
import 'package:shoezy_app/core/widgets/custom_button.dart';
import 'package:shoezy_app/features/details/widgets/select_box.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({super.key});

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Details',
          style: getTitleStyle(),
          ),
          centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){},
             icon: Icon(Icons.favorite_border),
             )

        ],
        leading:  IconButton(onPressed: (){Navigator.pop(context);},
           icon: Icon(Icons.arrow_back_ios_new_outlined,color: AppColors.blackColor,size: 25,)), 
      ),
      body: Column(

        children: [
          Image.asset(
            'assets/details.png',
            width: 220,
            height: 150,
            ),
            const Gap(30),

          Expanded(
            child: Container(
              
                    
                    decoration: BoxDecoration(
                        borderRadius:const BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                          ),
                        color: AppColors.blackColor),
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'name',
                            style: getBodyStyle(color: AppColors.whiteColor),
                            ),
                            const Gap(5),
                            Text(
                              'price',
                              style: getBodyStyle(color: AppColors.whiteColor),
                              ),
                              const Gap(20),
                              Text(
                                'select color',
                                style: getBodyStyle(color: AppColors.whiteColor),
                              ),
                              const Gap(20),
                              Row(
                                children: [
                                  SelectBox(color: AppColors.whiteColor),
                                  const Spacer(),
                                  SelectBox(color: AppColors.blueColor),
                                  const Spacer(),
                                  SelectBox(color: AppColors.redcolor),
                                  const Spacer(),
                                  SelectBox(color: Colors.green),
                                ],
                              ),
                               const Gap(40),
                               Text(
                                'select size',
                                style: getBodyStyle(color: AppColors.whiteColor),
                               ),
                               const Gap(15),
                               Row(
                                children: [
                                    SelectBox(color: AppColors.whiteColor,text: '6',),
                                  const Spacer(),
                                  SelectBox(color: AppColors.whiteColor,text: '7',),
                                  const Spacer(),
                                  SelectBox(color: AppColors.whiteColor,text: '8',),
                                  const Spacer(),
                                  SelectBox(color: AppColors.whiteColor,text: '9',),
                                  
                                ],
                               ),
                               const Gap(15),
                               SelectBox(color: AppColors.whiteColor,text: '10',),
                                  const Spacer(),

                               const Spacer(),
                               Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomButton(text: 'Add Cart', onTap: (){},width: 160,color: AppColors.blueColor,),
                                  const Gap(5),
                                  CustomButton(text: 'Buy Now', onTap: (){},width: 160,color: AppColors.blueColor,),
                                ],
                               )
            
            
                        ],
                     ))),
          ),
        ],
      ) );
  }
}