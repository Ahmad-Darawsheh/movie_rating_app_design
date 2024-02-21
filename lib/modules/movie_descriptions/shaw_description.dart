import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../layout/cubit/cubit.dart';
import '../../layout/cubit/states.dart';

class ShawScreen extends StatelessWidget {
  const ShawScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit=MainCubit.get(context);
    return BlocConsumer<MainCubit,MainStates>(
      listener: (BuildContext context,MainStates states){},
      builder: (BuildContext context,MainStates states){
        return Scaffold(

          appBar: AppBar(
            backgroundColor: HexColor('121314'),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new_sharp),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: const Text(
              'The Shawshank Redemption',
            ),
            centerTitle: true,
            actions: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.more_horiz),
              ),
            ],
            elevation: 100,
          ),
          body: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 25),
                      height: 210,
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: const DecorationImage(
                            image: AssetImage('images/shawshank.jpg'),
                            fit: BoxFit.contain,
                          ))),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: Text(
                        'Over the course of several years, two convicts form a friendship, seeking consolation and, eventually, redemption through basic compassion.',
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                    decoration: BoxDecoration(
                      color: HexColor('292b2e'),
                      boxShadow: [
                        BoxShadow(
                          // Add your defined shadow
                          color: Colors.grey.withOpacity(0.5),
                          offset: Offset(1.0, 1.0),
                          blurRadius: 7.0,
                          spreadRadius: 1.5,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.5),
                      child: Text(
                        'Prison Drama',
                        style: GoogleFonts.sansita(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                    decoration: BoxDecoration(
                      color: HexColor('292b2e'),
                      boxShadow: [
                        BoxShadow(
                          // Add your defined shadow
                          color: Colors.grey.withOpacity(0.5),
                          offset: Offset(1.0, 1.0),
                          blurRadius: 7.0,
                          spreadRadius: 1.5,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.5),
                      child: Text(
                        'Drama',
                        style: GoogleFonts.sansita(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    child: Text(
                      'Length',
                      style:
                      GoogleFonts.lato(color: Colors.grey[350], fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    child: Text(
                      'Language',
                      style:
                      GoogleFonts.lato(color: Colors.grey[350], fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    child: Text(
                      'Rating',
                      style:
                      GoogleFonts.lato(color: Colors.grey[350], fontSize: 20),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(vertical: 3, horizontal: 29),
                    child: Text(
                      '2h 22m',
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2, left: 40),
                    child: Text(
                      'English',
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 2, left: 67),
                      child: Text(
                        '9.1/10',
                        style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  cubit.rating,
                  style: GoogleFonts.actor(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              RatingBar.builder(

                  itemSize: 36,
                  itemCount: 10,
                  initialRating: 10,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  minRating: 1,
                  itemBuilder: (context, _) =>
                      Icon(Icons.star, color: Colors.amber,),
                  onRatingUpdate: (rating) {
                    cubit.onRatingChange(rating);
                    print(rating);

                  }

              ),

            ],
          ),
        );
      },
    );
  }
}
