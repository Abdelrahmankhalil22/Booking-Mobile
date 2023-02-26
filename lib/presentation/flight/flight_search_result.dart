import 'package:booking/presentation/resources/color_maneger.dart';
import 'package:flutter/material.dart';

import '../../componaent/card.dart';
import '../../componaent/list_card.dart';

class FlightSearchResult extends StatelessWidget {
  const FlightSearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) => AppListCard(
          txt: 'sssss',
          clr: ColorManager.white,
          textClr: ColorManager.black,
          txt2: 'sss',
          date: 'sss02',
          amount: '100',
        ),
        separatorBuilder: (BuildContext context, int index) => SizedBox(),
        itemCount: 10,
      ),
    );
  }
}
