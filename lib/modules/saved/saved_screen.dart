import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_rating_app/layout/cubit/cubit.dart';
import 'package:movie_rating_app/layout/cubit/states.dart';

class SavedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainStates>(
        listener: (BuildContext context,MainStates states){},
    builder: (BuildContext context,MainStates states) {
      return const Center(
        child: Text(
          'You have no saved movies!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,color: Colors.white
          ),
        ),
      );
    },
    );

  }
}

