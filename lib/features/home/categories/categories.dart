import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:shoezy_app/core/utils/app_colors.dart';
import 'package:shoezy_app/features/home/widgets/home_grid.dart';

class HomeCategories extends StatefulWidget {
  const HomeCategories({super.key});

  @override
  State<HomeCategories> createState() => _HomeCategoriesState();
}

class _HomeCategoriesState extends State<HomeCategories> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
        length: 6,
        child: Column(
          children: <Widget>[
            ButtonsTabBar(
              backgroundColor:AppColors.blueColor,
              unselectedBackgroundColor: Colors.grey[300],
              unselectedLabelStyle: TextStyle(color: Colors.black),
              labelStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              tabs: [
                Tab(
                //  icon: Icon(Icons.directions_car),
                  text: "All",
                  
                ),
                Tab(
                //  icon: Icon(Icons.directions_transit),
                  text: "Women",
                ),
                Tab(
                 // icon: Icon(Icons.directions_bike),
                  text: "Sport",
                  ),
                Tab(
                 // icon: Icon(Icons.directions_car),
                  text: "Kids",
                  ),
                Tab(
                 // icon: Icon(Icons.directions_transit),
                  text: "Classic",
                  ),
                Tab(
                //  icon: Icon(Icons.directions_bike),
                  text: "Men",
                
                ),
              ],
            ),
         const   Expanded(
              child: TabBarView(
                children: <Widget>[
                  HomeGrid(),
                    
                  
                  Center(
                    child: Icon(Icons.directions_transit),
                  ),
                  Center(
                    child: Icon(Icons.directions_bike),
                  ),
                  Center(
                    child: Icon(Icons.directions_car),
                  ),
                  Center(
                    child: Icon(Icons.directions_transit),
                  ),
                  Center(
                    child: Icon(Icons.directions_bike),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
