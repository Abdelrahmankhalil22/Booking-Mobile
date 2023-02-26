import 'package:booking/componaent/app_drawer.dart';
import 'package:booking/presentation/flight/cubit/cubit.dart';
import 'package:booking/presentation/resources/color_maneger.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../componaent/app_card.dart';

class TourScreen extends StatelessWidget {
  TourScreen({Key? key}) : super(key: key);
  PageController controller = PageController();
  List<String> country = [
    'Cairo',
    'Luxor',
    'Aswan',
    'Hurghada',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(
          'Tour',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      drawer: AppDrawer(),
        backgroundColor: ColorManager.primary,
        body: ListView(physics: NeverScrollableScrollPhysics(), children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Discover your tour',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: ColorManager.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  PageView.builder(
                    itemCount: country.length ~/ 4,
                    physics: BouncingScrollPhysics(),
                    controller: controller,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      final indexX3 =index * 3;
                      final index_1 = index + indexX3;
                      final index_2 = index + indexX3 + 1;
                      final index_3 = index + indexX3 + 2;
                      final index_4 = index + indexX3 + 3;
                      return GridView.count(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: 1 / 1.3 ,
                          crossAxisCount: 2,
                          children: [
                            AppCard(name: country[index_1]),
                            AppCard(name: country[index_2]),
                            AppCard(name: country[index_3]),
                            AppCard(name: country[index_4]),
                          ]);
                    },
                  ),
                  Positioned(
                    bottom: 200,
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      axisDirection: Axis.horizontal,
                      effect: SlideEffect(
                          spacing: 8.0,
                          radius: 2,
                          dotWidth: 24.0,
                          dotHeight: 5.0,
                          strokeWidth: 1.5,
                          dotColor: Color(0xffc5c5c5),
                          activeDotColor: ColorManager.black),
                    ),
                  ),
                ],
              ),
            ),
          )
        ]));
  }
}
