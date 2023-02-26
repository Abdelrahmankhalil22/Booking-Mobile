import 'package:booking/presentation/resources/color_maneger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../presentation/flight/cubit/cubit.dart';
import '../presentation/flight/cubit/state.dart';

class AppLayout extends StatelessWidget {
  AppLayout({Key? key}) : super(key: key);

  // var auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, Object? state) => Scaffold(
        body: HomeCubit.get(context)
            .screens[HomeCubit.get(context).currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: ColorManager.primary,
          items: HomeCubit.get(context).bottomItems,
          currentIndex: HomeCubit.get(context).currentIndex,
          onTap: (index) =>
              HomeCubit.get(context).changeBottomNavBar(index),
        ),
      ),
    );
  }
}
