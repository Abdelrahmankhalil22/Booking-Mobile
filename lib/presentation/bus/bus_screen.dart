import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../componaent/app_scaffold.dart';
import '../flight/cubit/cubit.dart';
import '../flight/cubit/state.dart';

class BusScreen extends StatelessWidget {
  const BusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (BuildContext context, state){

      },
      builder: (BuildContext context, state) {
/*
        if (state is Loading||total==null) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is ErrorOccurred) {
          return const Text('error ');
        }*/

        return AppScaffold(displayLarge: 'Book Bus',headline: 'Select your tour',isBus: true,);
      },
    );
  }
}
