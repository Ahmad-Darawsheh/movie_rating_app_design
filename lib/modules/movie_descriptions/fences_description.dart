import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../layout/cubit/cubit.dart';
import '../../layout/cubit/states.dart';
import '../../shared/components.dart';

class FencesScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var cubit = MainCubit.get(context);
    return BlocConsumer<MainCubit, MainStates>(
        listener: (BuildContext context, MainStates states) {},
        builder: (BuildContext context, MainStates states) {
          return buildDescriptionScreen2(
              context: context,
              title: 'Fences',
              imageUrl: 'images/fences.jpg',
              description:
              'A working-class African-American father tries to raise his family in the 1950s, while coming to terms with the events of his life.',
              genres: ['Thriller', 'Drama'],
              length: '2h 19m',
              rate: 7.2);
        }
    );
  }
}