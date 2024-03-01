import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoezy_app/core/utils/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
   List<Widget> images = [
    ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          'assets/shoes1.png',
          height: 182,
                  width:  325,
          fit: BoxFit.cover,
        )),
    ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          'assets/shoes1.png',
          height: 182,
                  width:  325,
          fit: BoxFit.cover,
        )),
    ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
'assets/shoes1.png',
         height: 182,
                  width:  325,
          fit: BoxFit.cover,
        )),
    ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          'assets/shoes1.png',
           height: 182,
                  width:  325,
          fit: BoxFit.cover,
        ))
  ];
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        CarouselSlider(
            items: images,
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                setState(() {
                  currentPage = index;
                });
              },
              
              height: 150,
              
              viewportFraction: 0.75,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
            )),
        const Gap(10),
        SmoothPageIndicator(
          controller: PageController(initialPage: currentPage),
          count: images.length,
          axisDirection: Axis.horizontal,
          effect: ScrollingDotsEffect(
              dotHeight: 10,
              dotWidth: 10,
              activeDotScale: 1.2,
              activeDotColor: AppColors.blueColor),
        ),
      ],
    );
  }
}