import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../layout/cubit/cubit.dart';
import '../../layout/cubit/states.dart';
import '../../shared/components.dart';

class OppenheimerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var cubit = MainCubit.get(context);
    return BlocConsumer<MainCubit, MainStates>(
        listener: (BuildContext context, MainStates states) {},
        builder: (BuildContext context, MainStates states) {
          return buildDescriptionScreen(
              context: context,
              title: 'Oppenheimer',
              imageUrl: 'images/oppenheimer.jpg',
              description:
                  'The story of American scientist, J. Robert Oppenheimer, and his role in the development of the atomic bomb.',
              genres: ['Biography', 'History', 'Drama'],
              length: '3h 00m',
              rate: 8.4);
        });
  }
}
