import 'package:flutter/material.dart';
import 'package:shoezy_app/core/utils/styles.dart';
import 'package:shoezy_app/features/brands/widgets/logo.dart';

class BrandsVeiw extends StatefulWidget {
  const BrandsVeiw({super.key});

  @override
  State<BrandsVeiw> createState() => _BrandsVeiwState();
}

class _BrandsVeiwState extends State<BrandsVeiw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Find Your brand',style:getTitleStyle() ,),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.count(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            children: const [
              BrandLogo(text: 'nike',image: 'assets/nike.png'),
              BrandLogo(text: 'puma',image: 'assets/puma.png',),
              BrandLogo(text: 'adidas',image: 'assets/adidas.png',),

              BrandLogo(text: 'sketcher',image: 'assets/skechers.png',),
              BrandLogo(text: 'timper',image: 'assets/shoes1.png',),
              BrandLogo(text: 'awawd',image: 'assets/shoes1.png',),


              
           
            ]),
      ),
    );
  }
}
  
