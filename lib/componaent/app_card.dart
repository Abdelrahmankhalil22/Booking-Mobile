import 'package:flutter/material.dart';

import '../presentation/resources/assets_maneger.dart';

class AppCard extends StatelessWidget {
  const AppCard({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(ImageAssets.view), fit: BoxFit.cover),
          ),
        ),
        Text(
          name,
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Colors.black),
          textAlign: TextAlign.center,
        ),
        Text(
          "Situated by the Nile, Egypt’s capital Cairo holds some of the country’s best historical and contemporary offerings, lively streets that never sleep, and diverse neighborhoods. ",
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
