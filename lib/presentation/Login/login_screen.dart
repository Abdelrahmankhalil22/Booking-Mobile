import 'package:booking/presentation/resources/color_maneger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../componaent/component.dart';
import '../../componaent/text_form_field.dart';
import '../flight/cubit/cubit.dart';
import '../flight/cubit/state.dart';
import '../resources/assets_maneger.dart';
import '../resources/responsive.dart';
import '../resources/routes_maneger.dart';
import '../resources/strings_maneger.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
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
                  'LogIn',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Enter your data to login',
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
                      AppTextFormField(
                        label: 'Email Address',
                        hint: 'xxxxxxxxxx@gmail.com',
                        validate: (val) {
                          if (val!.isEmpty) {
                            return "please Enter Your Email";
                          }
                          return null;
                        },
                        controller: HomeCubit.get(context).emailController,
                      ),
                      responsive.sizedBoxH20,
                      AppTextFormField(
                        suffix: Icons.visibility_off,
                        label: 'Password',
                        hint: '*********',
                        validate: (val) {
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
                            'Remember me',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: Colors.grey),
                          ),
                          Spacer(),
                          Text(
                            'Forget Password ?',
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
                            /*      if (formState.currentState!.validate()) {
                              HomeCubit.get(context).userLogin(
                                email:
                                    HomeCubit.get(context).emailController.text,
                                password: HomeCubit.get(context)
                                    .passwordController
                                    .text,
                              );
                            }*/
                            navigateTo(context, Routes.appLayout);
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10)))),
                          child: const Text(AppStrings.login),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Text(
                              'Don’t have an account?',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(color: Colors.grey),
                            ),
                            responsive.sizedBoxW5,
                            TextButton(
                              child: Text(
                                'Sign up',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(color: ColorManager.primary),
                              ),
                              onPressed: () {
                                navigateTo(context, Routes.registerScreen);
                              },
                            ),
                          ],
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
