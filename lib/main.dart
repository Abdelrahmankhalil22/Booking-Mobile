// Import the generated file
import 'package:booking/network/remote/dio_helper.dart';
import 'package:booking/presentation/flight/cubit/cubit.dart';
import 'package:booking/presentation/resources/constant_maneger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app/app.dart';
import 'componaent/component.dart';
import 'network/remote/cache_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.init();
  await CacheHelper.init();
  id = await CacheHelper.getDate(key: 'empNo');
  Bloc.observer = MyBlocObserver();
  runApp(BlocProvider(create: (context)=> HomeCubit(),
    child: MyApp(),
  ));
}
