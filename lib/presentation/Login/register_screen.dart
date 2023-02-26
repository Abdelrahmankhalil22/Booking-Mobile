import 'package:booking/presentation/resources/color_maneger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../componaent/component.dart';
import '../../componaent/my_text_feild.dart';
import '../flight/cubit/cubit.dart';
import '../flight/cubit/state.dart';
import '../resources/assets_maneger.dart';
import '../resources/responsive.dart';
import '../resources/routes_maneger.dart';
import '../resources/strings_maneger.dart';
import '../resources/value_maneger.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: BlocConsumer<HomeCubit, HomeState>(
        listener: (BuildContext context, Object? state) {
          if (state is Loading) {
            CircularProgressIndicator.adaptive();
          }
          /*    if (state is AuthSuccess) {
            navigateToAndReplacement(context, Routes.appLayout);
            showToast(
                msg: 'تم تسجيل الدخول بنجاح', state: ToastStates.SUCCESS);
          }
          if (state is ErrorOccurred) {
            showToast(
                msg: 'حدث خطأ اثناء تسجيل الدخول', state: ToastStates.ERROR);
          }*/
        },
        builder: (BuildContext context, state) => Form(
          key: formState,
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Register',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Enter your data to register',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ListView(
                    children: [
                      SizedBox(
                        height: responsive.sHeight(context) * .06,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Name',
                          hintText: 'Rahma Ibrahim',
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(),
                        ),
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "please Enter Your Name";
                          }
                          return null;
                        },
                        controller: HomeCubit.get(context).nameController,
                      ),responsive.sizedBoxH20,
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email Address',
                          hintText: 'xxxxxxxxxx@gmail.com',
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(),
                        ),
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "please Enter Your Email";
                          }
                          return null;
                        },
                        controller: HomeCubit.get(context).emailController,
                      ),
                      responsive.sizedBoxH20,
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Phone',
                          hintText: '+20 1002004567',
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(),
                        ),
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "please Enter Your Name";
                          }
                          return null;
                        },
                        controller: HomeCubit.get(context).nameController,
                      ),responsive.sizedBoxH20,
                      TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.visibility_off),
                          labelText: 'Password',
                          hintText: '*********',
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(),
                        ),
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "please Enter Your Password";
                          }
                          return null;
                        },
                        controller: HomeCubit.get(context).passwordController,
                      ),
                      responsive.sizedBoxH30,
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: (value) {}),
                          Text(
                            'I agree with ',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: Colors.grey),
                          ),
                          Text(
                            'Term ',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: ColorManager.primary),
                          ),
                          Text(
                            'and ',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: Colors.grey),
                          ),
                          Text(
                            'Privacy',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: ColorManager.primary),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Divider(
                            thickness: 5,
                            color: Colors.grey,
                          ),
                          Text(
                            'or',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(color: ColorManager.black),
                          ),
                          Divider(
                            thickness: 5,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                              height: responsive.sHeight(context) * .07,
                              ImageAssets.facebook),
                          Image.asset(
                              height: responsive.sHeight(context) * .07,
                              ImageAssets.gmail),
                          Image.asset(
                              height: responsive.sHeight(context) * .07,
                              ImageAssets.apple),
                        ],
                      ),
                      responsive.sizedBoxH20,
                      Container(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            /* if (formState.currentState!.validate()) {
                              HomeCubit.get(context).userLogin(
                                email:
                                HomeCubit.get(context).emailController.text,
                                password: HomeCubit.get(context)
                                    .passwordController
                                    .text,
                              );
                            }*/
                            navigateTo(context,Routes.appLayout);
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10)))),
                          child: const Text(AppStrings.register),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
