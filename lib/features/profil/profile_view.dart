import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoezy_app/core/functions/nav.dart';
import 'package:shoezy_app/core/utils/app_colors.dart';
import 'package:shoezy_app/core/utils/styles.dart';
import 'package:shoezy_app/core/widgets/custom_button.dart';
import 'package:shoezy_app/core/widgets/custom_text_form.dart';
import 'package:shoezy_app/features/profil/profile_edit.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
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
              Image.asset(
                'assets/person.png',
                width: 200,
                height: 195,
              ),
              const Gap(5),
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
                          CustomButton(text: "Edit", onTap: (){
                            pushTo(context,const ProfileEditView());
                          },width: 150,color: AppColors.gryColor,),
                          
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