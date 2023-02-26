import 'package:booking/componaent/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';
import 'cubit/state.dart';

class FlightScreen extends StatefulWidget {
  const FlightScreen({Key? key}) : super(key: key);

  @override
  State<FlightScreen> createState() => _FlightScreenState();
}

class _FlightScreenState extends State<FlightScreen> {
  @override
  void initState() {

    super.initState();
  }
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

        return AppScaffold(displayLarge: 'Book Flight',headline: 'Select your flight',);
      },
    );
  }
}
