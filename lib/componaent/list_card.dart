import 'package:booking/presentation/resources/routes_maneger.dart';
import 'package:flutter/material.dart';
import '../presentation/resources/responsive.dart';
import '../presentation/resources/value_maneger.dart';
import 'component.dart';

class AppListCard extends StatelessWidget {
  const AppListCard({
    Key? key,
    required this.txt,
    required this.txt2,
    required this.clr,
    required this.textClr,
    required this.date,
    required this.amount,
  }) : super(key: key);
  final String txt;
  final String txt2;
  final String date;
  final String amount;
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
          height: responsive.sHeight(context) * .3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: clr,
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.p12),
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              '12:55',
                            ),
                            Text(
                              'CAT',
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Direct',
                            ),
                            Text(
                              txt2,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '22:50',
                            ),
                            Text(
                              'SSH',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  thickness: 3,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Time',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(color: textClr),
                            ),
                            Text(
                              '1h 5min',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(color: textClr),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Stop',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(color: textClr),
                            ),
                            Text(
                              'Non-stop',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(color: textClr),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Price',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(color: textClr),
                            ),
                            Text(
                              '1500 Le',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(color: textClr),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {navigateTo(context, Routes.confirmFlight);}, child: Text('View details'))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
