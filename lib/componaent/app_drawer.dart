import 'package:booking/presentation/flight/cubit/cubit.dart';
import 'package:booking/presentation/flight/cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../presentation/resources/assets_maneger.dart';
import '../presentation/resources/color_maneger.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer({Key? key}) : super(key: key);



  Widget buildDrawerListItem(
      BuildContext context,
      {required String leading,
        bool ?isIcon =false,
      required String title,
      Widget? trailing,
      Function()? onTap,
      Color? color}) {
    return ListTile(
      leading: isIcon==true?Icon(Icons.logout):Image.asset(height: 50,width: 30,leading),
      title: Text(title,style: Theme.of(context).textTheme.titleMedium,),
      onTap: onTap,
      trailing: trailing ??= Icon(
        Icons.arrow_forward_ios,
        color: ColorManager.primary,
      ),
    );
  }

  Widget buildDrawerListItemDivider() {
    return const Divider(
      height: 0,
      thickness: 3,
      indent: 18,
      endIndent: 24,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (BuildContext context, state) => ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Hello',style: Theme.of(context).textTheme.titleMedium!.copyWith(color: ColorManager.black,fontSize: 20),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Rahma Ibrahim',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: ColorManager.black,fontSize: 20),),
            ),
            SizedBox(
              height: 30,
            ),
            buildDrawerListItemDivider(),
            SizedBox(
              height: 20,
            ),
            buildDrawerListItem(
              context,
                leading: ImageAssets.myBooking, title: 'My Booking', onTap: () {}),
            buildDrawerListItem(
              context,
                leading: ImageAssets.privacy, title: 'Privacy Policy', onTap: () {}),
            buildDrawerListItem(
                context,
                leading: ImageAssets.contact, title: 'Contact Us', onTap: () {}),
            buildDrawerListItem(
                context,
                leading: ImageAssets.star,
                title: 'Rate Us',
                onTap: () {}),
            SizedBox(height: 20,),
            buildDrawerListItemDivider(),
            SizedBox(
              height: 20,
            ),
            buildDrawerListItem(
              isIcon: true,
              context,
                leading:'',
                title: 'Log Out',
                onTap: () {
                 /* HomeCubit.get(context).logOut(context);*/
                }),
          ],
        ),
      ),
    );
  }
}
