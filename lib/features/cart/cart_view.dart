import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoezy_app/core/utils/app_colors.dart';
import 'package:shoezy_app/core/utils/styles.dart';
import 'package:shoezy_app/features/cart/widgets/bottom.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}
  int num =0;


class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
        
          BuyButtom(),
      
              
      appBar: AppBar(
        
        title: Text(
          'Cart',
          style: getTitleStyle(),
        ),
        centerTitle: true,
      ),
      body: 
        
          ListView.separated(
            itemBuilder:(context,index){
              return Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 212, 210, 210),
                    borderRadius: BorderRadius.circular(15),
                    
                    
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/favshoes.png',width: 131,height: 143,),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //shoes name
                          Text(
                            'Nike Air Jordan',
                            style: getBodyStyle(color: AppColors.blackColor,fontWeight: FontWeight.w700),
                          ),
                          //shoes marka
                          const Gap(5),
                            Text(
                            'Nike ',
                            style: getBodyStyle(color: Colors.grey,fontWeight: FontWeight.w700),
                          ),
                          //shoes price
                          const Gap(10),
                          
                           Text(
                            '225',
                            style: getBodyStyle(color: AppColors.blackColor,fontWeight: FontWeight.w700),
                          ),
                         
                        ],
                          
                      ),
                      const Spacer(),
                                         Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                             FloatingActionButton(
                              backgroundColor: AppColors.gryColor,
                              mini: true,
                              onPressed: (){
                                setState(() {
                                  num++;
                                  
                                });
                              },
                              child: Icon(Icons.add,color: AppColors.whiteColor,),
                              ),
                             const   Gap(15),
                             Text(
                              '$num',
                              style: getBodyStyle(color: AppColors.blackColor,fontWeight: FontWeight.w700),
                              ),
                             const Gap(15),
                                 FloatingActionButton(
                              backgroundColor: AppColors.blackColor,
                              mini: true,
                              onPressed: (){
                                setState(() {
                                  num--;
                                });
                              },
                              child: Icon(Icons.remove,color: AppColors.whiteColor,),
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