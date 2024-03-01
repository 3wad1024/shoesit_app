import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:shoezy_app/core/utils/styles.dart';
import 'package:shoezy_app/features/brands/brand_veiw.dart';
import 'package:shoezy_app/features/cart/cart_view.dart';
import 'package:shoezy_app/features/favourites/favourites_view.dart';
import 'package:shoezy_app/features/home/home_view.dart';
import 'package:shoezy_app/features/settings/settings_view.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  List<Widget> pages = [
    const HomeView(),
    const CartView(),
    const BrandsVeiw(),
    const FavouritesView(),
    const SettingsView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: pages[_selectedIndex],
      ),
      bottomNavigationBar: FlashyTabBar(

        
      
       
        backgroundColor: Colors.white,
        animationCurve: Curves.ease,
        animationDuration: Duration(seconds:2 ),
        selectedIndex: _selectedIndex,
        iconSize: 30,
      
        showElevation: false, 
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            icon: Icon(
              Icons.home_filled,
              color: Colors.black,
            ),
            title: Text(
              'Home',
              style: getSmallStyle(fontWeight: FontWeight.w800,color: Colors.black,fontSize: 12),
            ),
          ),
          FlashyTabBarItem(
            icon: Image.asset(
              'assets/shopping-cart.png',
              width: 30,
              height: 30,
            ),
            
            title: Text(
              'Cart',
              style: getSmallStyle(fontWeight: FontWeight.w800,color: Colors.black,fontSize: 12),
            ),
          ),
           FlashyTabBarItem(
                          icon: Image.asset(
              'assets/brand.png',
              width: 30,
              height: 30,
            ),
           
            title: Text(
              'brands',
              style: getSmallStyle(fontWeight: FontWeight.w800,color: Colors.black,fontSize: 12),
            ),
          ),
          FlashyTabBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.black,
            ),
            title: Text(
              'Favouirte',
              style: getSmallStyle(fontWeight: FontWeight.w800,color: Colors.black,fontSize: 12),
            ),
          ),
          FlashyTabBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            title: Text(
              'Settings',
              style: getSmallStyle(fontWeight: FontWeight.w800,color: Colors.black,fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
