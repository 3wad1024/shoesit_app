import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoezy_app/core/utils/app_colors.dart';
import 'package:shoezy_app/core/utils/styles.dart';
import 'package:shoezy_app/features/settings/widgets/custom_container.dart';
import 'package:shoezy_app/features/settings/widgets/custtom_bottun.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: Text(
          'Settings',
          style: getTitleStyle(),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                    radius: 92,
                    backgroundColor: AppColors.blueColor,
                    child: CircleAvatar(
                      radius: 90,
                      backgroundImage: AssetImage('assets/person.png'),
                    
                    ),
                  ),
                  const Gap(20),
                  Text(
                    'Name',
                    style: getTitleStyle(),
                    ),
              Padding(
                
                padding: EdgeInsets.only(left: 15,right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                      const Gap(15),
                      Row(
                        children: [
                          Text(
                            'Personal Informatin',
                            style: getBodyStyle(),
                          ),
                          const Spacer(),
                          TextButton(
                            onPressed: (){},
                             child: Text(
                              'Edit',
                              style: getBodyStyle(color: AppColors.blueColor),
                             ),
                             ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                        color: AppColors.gryColor,
                        borderRadius: BorderRadius.circular(20),
          
          
                        ),
                        child: Column(
                          children: [
                            CustomContainer(text: 'Name', icon: Icons.person, text2: 'Awad Sieelkhatim'),
                            const Gap(3),
                            CustomContainer(text: 'email', icon: Icons.email_outlined, text2: 'awadsalih@gmail.com'),
                            const Gap(3),
                            CustomContainer(text: 'phone', icon: Icons.phone_android_outlined, text2: '0999989519'),
                            const Gap(3),
                            CustomContainer(text: 'location', icon: Icons.location_on_outlined, text2: 'khartoum'),
          
                            
                          ],
                        ),
          
                      ),
                      Gap(15),
          
                     
                      Text(
                        'Others',
                        style: getBodyStyle(),
                      ),
                      const Gap(5),
                      Container(
                           alignment: Alignment.center,
                        decoration: BoxDecoration(
                        color: AppColors.gryColor,
                        borderRadius: BorderRadius.circular(20),
          
          
                        ),
                        child: Column(
                          children: [
                            CustomButton2(text: 'Notification', onTap: (){}, icon: Icons.notifications_none_outlined),
                            const Gap(3),
                            CustomButton2(text: 'Log-out', onTap: (){}, icon: Icons.logout_rounded),
          
                          ],
                        ),
                      ),
                     
                
                
                
                
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}