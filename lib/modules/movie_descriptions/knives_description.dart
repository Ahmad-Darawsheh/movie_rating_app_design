import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../layout/cubit/cubit.dart';
import '../../layout/cubit/states.dart';
import '../../shared/components.dart';

class KnivesScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var cubit = MainCubit.get(context);
    return BlocConsumer<MainCubit, MainStates>(
        listener: (BuildContext context, MainStates states) {},
        builder: (BuildContext context, MainStates states) {
          return buildDescriptionScreen(
              context: context,
              title: 'Knives Out',
              imageUrl: 'images/knives.jpg',
              description:
              'A detective investigates the death of the patriarch of an eccentric, combative family.',
              genres: ['Comedy','Crime', 'Drama'],
              length: '2h 10m',
              rate: 7.9);
        }
    );
  }
}