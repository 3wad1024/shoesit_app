import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoezy_app/core/utils/app_colors.dart';
import 'package:shoezy_app/core/utils/styles.dart';
import 'package:shoezy_app/features/home/categories/categories.dart';
import 'package:shoezy_app/features/home/widgets/home_slider.dart';
import 'package:shoezy_app/features/home/widgets/search.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 30,left: 30,right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                const Gap(20),
                             Row(
                               children: [
                                 const  HomeSearch(),
                               ],
                             ),
                Row(
                  children: [
                    Text(
                      'New arrivals',
                      style: getTitleStyle(),
                    ),
                  ],
                ),
                const Gap(10),
               const  HomeSlider(),
                            
                
               
              ],
            ),
        
               const   HomeCategories(),
           
           
           // HomeGrid(), 
          ],
        ),
      ),
   
    );
  }
}
