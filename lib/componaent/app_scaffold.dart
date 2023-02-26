import 'package:booking/componaent/component.dart';
import 'package:booking/componaent/text_form_field.dart';
import 'package:booking/presentation/resources/color_maneger.dart';
import 'package:booking/presentation/resources/responsive.dart';
import 'package:booking/presentation/resources/routes_maneger.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  AppScaffold({Key? key, this.displayLarge, this.headline, this.isBus})
      : super(key: key);
  final String? displayLarge;
  final String? headline;
  bool? isBus = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: ColorManager.primary,
        body: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                displayLarge ?? '',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                headline ?? '',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
              ),
              child: Column(
                children: [
                  responsive.sizedBoxH20,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 45,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                       boxShadow: [BoxShadow(offset: Offset(0,0),
                         color: Colors.black12,
                         blurRadius: 4
                       )]
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          color: Colors.white
                        ),
                        child: TabBar(
                            unselectedLabelColor: ColorManager.black,
                            indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: ColorManager.primary),
                            tabs: [
                              Tab(
                                text: 'Return Flight',
                              ),
                              Tab(
                                text: 'One-way Flight',
                              ),
                            ]),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: AppTextFormField(
                                label: 'From',
                                hint: 'Coming From',
                                prefix: Icons.location_on_outlined),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: AppTextFormField(
                                label: 'To',
                                hint: 'Coming To',
                                prefix: Icons.location_on_outlined),
                          ),
                          isBus == true
                              ? SizedBox()
                              : Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: AppTextFormField(
                                          label: 'Traveller',
                                          hint: 'No.ticket',
                                          prefix: Icons.wallet_travel_outlined,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: AppTextFormField(
                                          label: 'Class',
                                          hint: 'Class',
                                          prefix: Icons.star_border_outlined,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: AppTextFormField(
                                      label: 'Departure',
                                      hint: '00/00/0000',
                                      prefix: Icons.calendar_month_outlined),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: AppTextFormField(
                                      label: 'Return',
                                      hint: '00/00/0000',
                                      prefix: Icons.calendar_month_outlined),
                                ),
                              ),
                            ],
                          ),
                          isBus == true
                              ? Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: AppTextFormField(
                                    label: 'Traveller',
                                    hint: 'No.ticket',
                                    prefix: Icons.wallet_travel_outlined,
                                  ),
                                )
                              : SizedBox(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                                height: 50,
                                width: double.infinity,
                                child: ElevatedButton(
                                    onPressed: () {}, child: Text('Search'))),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: AppTextFormField(
                                label: 'From',
                                hint: 'Coming From',
                                prefix: Icons.location_on_outlined),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: AppTextFormField(
                                label: 'To',
                                hint: 'Coming To',
                                prefix: Icons.location_on_outlined),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: AppTextFormField(
                                      label: 'Departure',
                                      hint: '00/00/0000',
                                      prefix: Icons.calendar_month_outlined),
                                ),
                              ),
                              isBus == true
                                  ? Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: AppTextFormField(
                                          label: 'Traveller',
                                          hint: 'No.ticket',
                                          prefix: Icons.wallet_travel_outlined,
                                        ),
                                      ),
                                    )
                                  : Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: AppTextFormField(
                                            label: 'Return',
                                            hint: '00/00/0000',
                                            prefix:
                                                Icons.calendar_month_outlined),
                                      ),
                                    ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                                height: 50,
                                width: double.infinity,
                                child: ElevatedButton(
                                    onPressed: () {
                                      navigateTo(
                                          context, Routes.flightSearchScreen);
                                    },
                                    child: Text('Search'))),
                          ),
                        ],
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
