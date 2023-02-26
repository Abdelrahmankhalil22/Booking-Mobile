import 'package:flutter/material.dart';

import '../presentation/resources/responsive.dart';
import '../presentation/resources/value_maneger.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    Key? key,
    required this.txt, this.txt2, required this.clr, required this.textClr,
  }) : super(key: key);
  final String txt;
  final String ?txt2;
  final Color clr;
  final Color textClr;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Material(
        borderRadius: BorderRadius.circular(20),
        elevation: 4,
        child: Container(
          height: responsive.sHeight(context) * .115,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: clr,
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.p12),
            child: Column(
              children: [
                Text(
                  txt,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color:textClr),
                ), Text(
                  txt2??'',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: textClr),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
