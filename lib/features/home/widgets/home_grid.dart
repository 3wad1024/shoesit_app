import 'package:flutter/material.dart';

class HomeGrid extends StatefulWidget {
  const HomeGrid({super.key});

  @override
  State<HomeGrid> createState() => _HomeGridState();
}

class _HomeGridState extends State<HomeGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(

        padding: EdgeInsets.only(top: 2),
        itemCount: 20,
        
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 3,mainAxisSpacing: 3),

        itemBuilder: (context, index) {
          return 
             
              Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.all(3),
              
             decoration: BoxDecoration(
              
              image: DecorationImage(image: AssetImage('assets/shoes image.png',))
             ),
             child:IconButton(
              onPressed: (){},
               icon:Icon(Icons.favorite_border,) 
               ) ,
              
              
          );
        });
  }
}
