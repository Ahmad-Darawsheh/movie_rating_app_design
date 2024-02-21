import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../layout/cubit/cubit.dart';
import '../../layout/cubit/states.dart';
import '../../shared/components.dart';

class NemoScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var cubit = MainCubit.get(context);
    return BlocConsumer<MainCubit, MainStates>(
        listener: (BuildContext context, MainStates states) {},
        builder: (BuildContext context, MainStates states) {
          return buildDescriptionScreen(
              context: context,
              title: 'Finding Nemo',
              imageUrl: 'images/nemo.jpg',
              description:
              'After his son is captured in the Great Barrier Reef and taken to Sydney, a timid clownfish sets out on a journey to bring him home.',
              genres: ['Animation', 'Adventure', 'Comedy'],
              length: '1h 40m',
              rate: 8.2);
        }
    );
  }
}