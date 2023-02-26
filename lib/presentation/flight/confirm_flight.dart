import 'package:flutter/material.dart';

import '../../componaent/confirm_flight_card.dart';
import '../../componaent/list_card.dart';
import '../resources/color_maneger.dart';

class ConfirmFlight extends StatelessWidget {
  const ConfirmFlight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.primary,
        body: ListView(physics: NeverScrollableScrollPhysics(), children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Confirm Flight',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Details about your ticket',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * .5,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 0),
                            color: Colors.black12,
                            blurRadius: 4)
                      ]),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                  child: ConfirmFlightCard(),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height*.55,
                height: 50,
                width:355,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                      onPressed: () {}, child: Text('Pay Now')),
                ),
              ),

            ],
          ),

        ]));
  }
}
