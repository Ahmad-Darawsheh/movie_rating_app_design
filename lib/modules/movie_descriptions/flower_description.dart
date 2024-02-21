import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../layout/cubit/cubit.dart';
import '../../layout/cubit/states.dart';
import '../../shared/components.dart';

class FlowerScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var cubit = MainCubit.get(context);
    return BlocConsumer<MainCubit, MainStates>(
        listener: (BuildContext context, MainStates states) {},
        builder: (BuildContext context, MainStates states) {
          return buildDescriptionScreen(
              context: context,
              title: 'Killers Of The Flower Moon',
              imageUrl: 'images/kotfm.jpeg',
              description:
              'When oil is discovered in 1920s Oklahoma under Osage Nation land, the Osage people are murdered one by one - until the FBI steps in to unravel the mystery.',
              genres: ['Crime', 'Drama', 'History'],
              length: '3h 26m',
              rate: 7.9);
        }
    );
  }
}