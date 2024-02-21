import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_rating_app/layout/cubit/cubit.dart';
import 'package:movie_rating_app/layout/cubit/states.dart';
import 'package:movie_rating_app/modules/sidebar/navbar.dart';

class MovieLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var cubit = MainCubit.get(context);
    return BlocProvider(
      create: (BuildContext context) => MainCubit(),
      child: BlocConsumer<MainCubit, MainStates>(
        listener: (BuildContext context, MainStates state) {},
        builder: (BuildContext context, MainStates state) {
          return Scaffold(
            drawer: NavBar(

            ),
            appBar: AppBar(

              title: const Text(
                'Filmer',
              ),
              centerTitle: true,
              actions: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.notifications),
                ),
                 Icon(Icons.nightlight),
              ],

            ),
            body: cubit.screens[cubit.curIndex],
            bottomNavigationBar: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.local_movies), label: 'Movies'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.turned_in_outlined), label: 'Saved')
              ],
              currentIndex: cubit.curIndex,
              onTap: (index) {
                cubit.changeCurIndex(index);
              },
            ),
          );
        },
      ),
    );
  }
}
