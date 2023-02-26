import 'package:bloc/bloc.dart';
import 'package:booking/presentation/flight/cubit/state.dart';
import 'package:booking/presentation/resources/assets_maneger.dart';
import 'package:booking/presentation/review/review.dart';
import 'package:booking/presentation/tour/tour.dart';
import 'package:booking/presentation/user_screen/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bus/bus_screen.dart';
import '../flight_screen.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);
  TextEditingController searchPersonController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  int? id;
  int currentIndex = 0;
  int pageViewIndex = 0;
  List<BottomNavigationBarItem> bottomItems = [  BottomNavigationBarItem(
    icon:Image.asset(ImageAssets.tour),
    label: "Tour",
  ),
     BottomNavigationBarItem(icon: Image.asset(ImageAssets.flight), label: "Flight"),
     BottomNavigationBarItem(
      icon: Image.asset(ImageAssets.bus),
      label: "Bus",
    ),

     BottomNavigationBarItem(
      icon: Image.asset(ImageAssets.review),
      label: "review",
    ),
  ];
  List<Widget> screens = [
     TourScreen(),
    const FlightScreen(),
    const BusScreen(),
    const ReviewScreen(),
  ];

  void changeBottomNavBar(index) {
    currentIndex = index;
    emit(HomeSuccess());
  }

  void changePageViewController(int index) {
    pageViewIndex = index;
    emit(HomeSuccess());
  }

/* LoginModel? loginModel;

  void userLogin({required email, required password}) async {
    emit(Loading());
    try {
      var response = await DioHelper.postDate(
        url: LOGIN,
        data: {
          "empno": email,
          "password": password,
        },
      );
      print(response.data);
      loginModel = LoginModel.fromJson(response.data);
      print(response.data);
      if (loginModel!.issucces == true) {
        bool saveToken = await CacheHelper.saveData(
            key: "token", value: loginModel!.result!.token);
        bool saveId = await CacheHelper.saveData(
            key: "empNo", value: loginModel!.result?.user!.empNo!);
        if (saveId == true) {
          id = loginModel!.result?.user!.empNo!;
          print('-------');
          print('2 $id');
          print('-------');
        }
        if (saveToken == true) {
          token = loginModel!.result?.token!;
          emit(AuthSuccess());
        }
      }
    } catch (error) {
      print(error);
      emit(ErrorOccurred(error: error.toString()));
    }
  }

  List<UserModel> userData = [];

  void getUserData() async {
    print('00000000000000000000000000');
    userData = [];
    id = await CacheHelper.getDate(key: 'empNo');
    emit(Loading());
    try {
      var response = await DioHelper.getDate(url: "allemp/$id", token: token);
      response.data.forEach((element) {
        // log(element.toString());
        userData.add(UserModel.fromJson(element));
      });
      emit(DataSuccess());
    } catch (error) {
      print(error.toString());
    }
  }

  List<HospitalModel> hospitalData1 = [];

  void getHospitalData1() async {
    emit(Loading());
    try {
      var response = await DioHelper.getDate(url: HOSPITAL1, token: token);
      response.data.forEach((element) {
        log(element.toString());
        hospitalData1.add(HospitalModel.fromJson(element));
      });
      emit(DataSuccess());
    } catch (error) {
      print(error.toString());
    }
  }

  List<HospitalModel> hospitalData2 = [];

  void getHospitalData2() async {
    emit(Loading());
    try {
      var response = await DioHelper.getDate(url: HOSPITAL2, token: token);
      response.data.forEach((element) {
        log(element.toString());
        hospitalData2.add(HospitalModel.fromJson(element));
      });
      emit(DataSuccess());
    } catch (error) {
      print(error.toString());
    }
  }

  TotalCostModel? totalCost;

  void getTotalCost() async {
    totalCost = null;
    id = await CacheHelper.getDate(key: 'empNo');
    emit(Loading());
    try {
      var response =
          await DioHelper.getDate(url: 'allemp/sum/$id', token: token);
      totalCost = TotalCostModel.fromJson(json.decode(response.data));
      print('00000');
      print(response.data);
      print('00000');

      // log(response.data.toString());
      print('.......');
      print(totalCost!.empname.toString());
      print('.......');
      emit(DataSuccess());
    } catch (error) {
      print(error.toString());
    }
  }

  bool value = true;

  switchChanged(bool value) {
    value != value;
    emit(SwitchChanged());
  }

  logOut(BuildContext context) async {
    try {
      var x = await CacheHelper.removeData(key: 'token');
      var y = await CacheHelper.removeData(key: 'empNo');

      emit(LogOut());
      if (x == true && y == true) {
        navigateToAndReplacement(context, Routes.loginScreen);
 */ /*       showToast(msg: 'تم تسجيل الخروج بنجاح', state: ToastStates.SUCCESS);*/ /*
        emit(LogOut2());
      } else {
        null;
      }
    } catch (error) {
      print(error);
    }
  }

  List<UserModel> resultPerson = [];

  searchPerson(String searchText) {
    resultPerson =
        userData.where((data) => data.name1!.startsWith(searchText)).toList();
    emit(getSearchData());
  }*/
}
