import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'package:movie_rating_app/styles/bloc_observer.dart';

import 'layout/cubit/cubit.dart';
import 'layout/cubit/states.dart';
import 'layout/movie_app_layout.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context)=>MainCubit(),
      child: BlocConsumer<MainCubit,MainStates>(
        listener: (context,state){},
        builder: (context,state){
          return  MaterialApp(
            darkTheme: ThemeData(
              appBarTheme:const AppBarTheme(
                backgroundColor: Colors.black,


              ),
            scaffoldBackgroundColor: Colors.black87,
              bottomNavigationBarTheme:const BottomNavigationBarThemeData(
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Colors.deepOrange,
                unselectedItemColor: Colors.grey,
                elevation: 100,
                backgroundColor: Colors.black87
              ),
                textTheme:  const TextTheme(
                    bodyLarge: TextStyle(
                      color: Colors.white,
                    ))
            ),
            themeMode: ThemeMode.dark,
            debugShowCheckedModeBanner: false,
            home: MovieLayout(),
          );
        },
      ),
    );
  }
}








