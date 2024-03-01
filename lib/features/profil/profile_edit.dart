import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoezy_app/core/utils/app_colors.dart';
import 'package:shoezy_app/core/utils/styles.dart';
import 'package:shoezy_app/core/widgets/custom_button.dart';
import 'package:shoezy_app/core/widgets/custom_text_form.dart';

class ProfileEditView extends StatefulWidget {
  const ProfileEditView({super.key});

  @override
  State<ProfileEditView> createState() => _ProfileEditViewState();
}

class _ProfileEditViewState extends State<ProfileEditView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
       appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
         leading:  IconButton(onPressed: (){Navigator.pop(context);},
           icon: Icon(Icons.arrow_back_ios_new_outlined,color: AppColors.blackColor,size: 25,)),
        title: Text(
          'profile',
          style: getTitleStyle(),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Image.asset(
                  'assets/person.png',
                  width: 200,
                  height: 195,
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
          
                  child: CircleAvatar(
                    
                    
                    backgroundColor: Colors.transparent,
                    radius: 20,
                    child: IconButton(
                      onPressed: (){},
                     icon: Icon(Icons.camera_alt_rounded),color: AppColors.blueColor,iconSize: 30,),
                  ),
                )
                ],
              ),
              const Gap(10),
              Text(
                'name',
                style: getTitleStyle(),
              ),
             const Gap(20),
              Container(
                
                decoration: BoxDecoration(
                    borderRadius:const BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                      ),
                    color: AppColors.blackColor),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                    
                      CustomTextForm(
                        textcolor: AppColors.whiteColor,
                         sidecolor:AppColors.whiteColor,
                          con: TextEditingController(), name: 'user name', lines: 1,
                          
                          ),
                      const Gap(15),
                      CustomTextForm(
                        textcolor: AppColors.whiteColor,
                         sidecolor:AppColors.whiteColor,
                          con: TextEditingController(), name: 'mobile number', lines: 1),
                      const Gap(15),
                      CustomTextForm(
                        textcolor: AppColors.whiteColor,
                         sidecolor:AppColors.whiteColor,
                        con: TextEditingController(), name: 'email address', lines: 1),
                      const Gap(15),
                      CustomTextForm(
                        textcolor: AppColors.whiteColor,
                         sidecolor:AppColors.whiteColor,
                          con: TextEditingController(), name: 'address', lines: 1),
                      const Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomButton(
                            text: "Save",
                             onTap: (){},
                             width: 150,
                             color: AppColors.gryColor,
                             ),
                          
                        ],
                      )
                   
                     
                     
                    ],
                  ),
                ),
              ),
          
          
            ],
          ),
        ),
    );
  }
}