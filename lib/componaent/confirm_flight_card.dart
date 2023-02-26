import 'package:booking/presentation/resources/assets_maneger.dart';
import 'package:booking/presentation/resources/color_maneger.dart';
import 'package:flutter/material.dart';

import '../presentation/resources/responsive.dart';
import '../presentation/resources/routes_maneger.dart';
import '../presentation/resources/value_maneger.dart';
import 'component.dart';

class ConfirmFlightCard extends StatelessWidget {
  const ConfirmFlightCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ColorManager.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p12),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('12:55',
                            style: Theme.of(context).textTheme.titleMedium!),
                        Text('CAT',
                            style: Theme.of(context).textTheme.titleMedium!),
                      ],
                    ),
                    Column(
                      children: [
                        Text('Direct',
                            style: Theme.of(context).textTheme.titleMedium!),
                        Text('txt2',
                            style: Theme.of(context).textTheme.titleMedium!),
                      ],
                    ),
                    Column(
                      children: [
                        Text('22:50',
                            style: Theme.of(context).textTheme.titleMedium!),
                        Text('SSH',
                            style: Theme.of(context).textTheme.titleMedium!),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Date',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.titleMedium!),
                        Text('20 Mar 2023',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.titleMedium!),
                      ],
                    ),
                    Column(
                      children: [
                        Text('Time',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.titleMedium!),
                        Text('1h 20min',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.titleMedium!),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Baggage',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.titleMedium!),
                        Text('20 Kg',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.titleMedium!),
                      ],
                    ),
                    Column(
                      children: [
                        Text('Class',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.titleMedium!),
                        Text('Economy',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.titleMedium!),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 3,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Passengers',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.titleMedium!),
                        Text('1 Adult',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.titleMedium!),
                        SizedBox(height:20,),
                        Text('Price',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.titleMedium!),
                        Text('1500 Le',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.titleMedium!),
                      ],
                    ),
                    Column(
                      children: [
                       Image.asset(ImageAssets.qr)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
