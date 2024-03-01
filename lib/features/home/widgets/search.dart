
import 'package:flutter/material.dart';
import 'package:shoezy_app/core/utils/app_colors.dart';
import 'package:shoezy_app/core/utils/styles.dart';

class HomeSearch extends StatefulWidget {
  const HomeSearch({super.key});

  @override
  State<HomeSearch> createState() => _HomeSearchState();
}

class _HomeSearchState extends State<HomeSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250,
      child: TextFormField(
        
        
        style: getBodyStyle(color: AppColors.blackColor),
      
        maxLines: 1,
        controller: TextEditingController(),
        decoration:  InputDecoration(
          filled: true,
          fillColor: AppColors.gryColor,
          hintText: 'Search',
          hintStyle: getBodyStyle(color: Colors.grey),
          contentPadding: EdgeInsets.only(bottom: 10),
          prefixIcon:const Icon(Icons.search,color: Colors.grey,),
          
          
          
      
                          enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color:AppColors.gryColor )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: AppColors.gryColor)),)
      ),
    );
  }
}