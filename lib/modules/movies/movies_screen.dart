import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:movie_rating_app/layout/cubit/cubit.dart';
import 'package:movie_rating_app/layout/cubit/states.dart';
import 'package:movie_rating_app/shared/components.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit=MainCubit.get(context);
    //creats a component of the slider with the image path and its name
    List<Widget> imagePaths ;

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text('Now Showing',
                      style: GoogleFonts.openSans(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                ),
                CarouselSlider(
                  items:imagePaths = [
                    GestureDetector(
                      onTap: (){
                        cubit.navigateToFlower(context);
                      },
                      child: buildItems(imageUrl: 'images/kotfm.jpeg', movieName: 'Killers Of The Flower Moon'),
                    ),
                GestureDetector(
                  onTap: (){
                    cubit.navigateToFences(context);
                  },
                  child:  buildItems(imageUrl: 'images/fences.jpg', movieName: 'Fences'),
                ),
                    GestureDetector(
                      onTap: (){
                        cubit.navigateToOppenheimer(context);
                      },
                      child: buildItems(imageUrl: 'images/oppenheimer.jpg', movieName: 'Oppenheimer') ,
                    ),
                    GestureDetector(
                      onTap: (){
                        cubit.navigateToNemo(context);
                      },
                      child:buildItems(imageUrl: 'images/nemo.jpg', movieName: 'Nemo') ,
                    )].map((imagePath) {
                    return Container(
                      width: 250,
                      child: imagePath,
                    );
                  }).toList(),
                  options: CarouselOptions(
                      height: 421,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 900),
                      enlargeCenterPage: false,
                      viewportFraction: 0.7),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text('Popular',
                    style: GoogleFonts.openSans(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Expanded(
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                      cubit.navigateToShaw(context);
                      },
                      child: buildPopularItems(
                          imageUrl: 'images/shawshank.jpg',
                          movieName: 'The Shawshank Redemption',
                          movieRating: 9.3,
                          genres: ['Prison Drama','Drama']
                      ),
                    ),
                    GestureDetector(
                      onTap: ()=>cubit.navigateToKnives(context),
                      child: buildPopularItems2(
                          imageUrl: 'images/knives.jpg',
                          movieName: 'Knives Out',
                          movieRating: 7.9,
                          genres: ['Comedy','Crime','Drama']
                      ),
                    ),

                    buildPopularItems2(
                        imageUrl: 'images/catchme.jpg',
                        movieName: 'Catch Me If You Can',
                        movieRating: 8.1,
                        genres: ['Biography','Crime','Drama']
                    ),
                    buildPopularItems(
                        imageUrl: 'images/ring.jpg',
                        movieName: 'The Ring',
                        movieRating: 7.1,
                        genres: ['Horror','Mystery']
                    ),

                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

