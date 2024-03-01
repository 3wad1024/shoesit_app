import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoezy_app/core/utils/app_colors.dart';
import 'package:shoezy_app/core/utils/styles.dart';

class FavouritesView extends StatefulWidget {
  const FavouritesView({super.key});

  @override
  State<FavouritesView> createState() => _FavouritesViewState();
}

class _FavouritesViewState extends State<FavouritesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         
        title: Text(
          'Favourites',
          style: getTitleStyle(),
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder:(context,index){
          return Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              padding: EdgeInsets.only(left: 20),
              
              decoration: BoxDecoration(
                color: AppColors.blackColor,
                borderRadius: BorderRadius.circular(15),
                
                
              ),
              child: Row(
                children: [
                  Image.asset('assets/favshoes.png',width: 131,height: 143,),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Nike Air Jordan',
                        style: getBodyStyle(color: AppColors.whiteColor),
                      ),
                      const Gap(5),
                       Text(
                        '2225',
                        style: getBodyStyle(color: AppColors.whiteColor),
                      ),
                     
                    ],

                  ),
                  const Spacer(),
                                     Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: (){}, 
                            icon: Icon(Icons.shopping_cart),
                            color:AppColors.whiteColor,
                            ),
                            Gap(50),
                             IconButton(
                            onPressed: (){}, 
                            icon: Icon(Icons.favorite),
                            color:AppColors.redcolor,
                            ),
                        ],

                      ),

                ],
              ),
              

            ),
          );
        },
         separatorBuilder: (context, index) => const Gap(1),
         itemCount:5,
          ),
    );
  }
}