import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:movie_rating_app/layout/cubit/states.dart';
import 'package:movie_rating_app/layout/movie_app_layout.dart';
import 'package:movie_rating_app/modules/movie_descriptions/shaw_description.dart';
import 'package:movie_rating_app/modules/saved/saved_screen.dart';

import '../../modules/movie_descriptions/fences_description.dart';
import '../../modules/movie_descriptions/flower_description.dart';
import '../../modules/movie_descriptions/knives_description.dart';
import '../../modules/movie_descriptions/nemo_description.dart';
import '../../modules/movie_descriptions/oppenheimer_description.dart';
import '../../modules/movies/movies_screen.dart';

class MainCubit extends Cubit<MainStates> {
  MainCubit() : super(MainInitialState());

  static MainCubit get(context) => BlocProvider.of(context);

  int curIndex = 0;
  String rating='You haven\'t rated this yet';


  List<Widget> screens = [
     MoviesScreen(),
    SavedScreen()
  ];

  void navigateToShaw(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (_){
      return const ShawScreen();
    }));
    emit(ShawMovie());
  }

  void changeCurIndex(int index) {
    curIndex = index;

    emit(MoviesBottomNavState());
  }
  void onRatingChange(double r){
    rating='You rated this $r';
    emit(RatingChange());
  }

  void navigateToFences(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (_){
      return  FencesScreen();
    }));
    emit(FencesMovie());
  }
  void navigateToNemo(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (_){
      return NemoScreen();
    }));
    emit(NemoMovie());
  }
  void navigateToFlower(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (_){
      return  FlowerScreen();
    }));
    emit(FlowerMovie());

  }

  void navigateToOppenheimer(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (_){
      return OppenheimerScreen();
    }));
    emit(OppenheimerMovie());
  }

  void navigateToKnives(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (_){
      return KnivesScreen();
    }));
    emit(KnivesMovie());
  }


}

