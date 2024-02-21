import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:movie_rating_app/layout/cubit/cubit.dart';

Widget buildItems({required String imageUrl, required String movieName}) =>
    Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.contain,
                ))),
        const SizedBox(
          height: 15,
        ),
        Center(
          child: Text(
            movieName,
            style: GoogleFonts.quicksand(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );

Widget buildPopularItems({
  required String imageUrl,
  required String movieName,
  required double movieRating,
  required List<String> genres,
}) =>
    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.contain,
                ))),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                movieName,
                style: GoogleFonts.openSans(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.start,
                maxLines: 2,
                overflow: TextOverflow.fade,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: HexColor('FFD700'),
                  size: 15,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '$movieRating/10   IMDB',
                  style: GoogleFonts.openSans(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 3),
                  decoration: BoxDecoration(
                    color: HexColor('dde3ff'),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.5),
                    child: Text(
                      genres[0],
                      style: GoogleFonts.sansita(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 3),
                  decoration: BoxDecoration(
                    color: HexColor('dde3ff'),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.5),
                    child: Text(
                      genres[1],
                      style: GoogleFonts.sansita(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );

Widget buildPopularItems2({
  required String imageUrl,
  required String movieName,
  required double movieRating,
  required List<String> genres,
}) =>
    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.contain,
                ))),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                movieName,
                style: GoogleFonts.openSans(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.start,
                maxLines: 2,
                overflow: TextOverflow.fade,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: HexColor('FFD700'),
                  size: 15,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '$movieRating/10   IMDB',
                  style: GoogleFonts.openSans(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 3),
                  decoration: BoxDecoration(
                    color: HexColor('dde3ff'),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.5),
                    child: Text(
                      genres[0],
                      style: GoogleFonts.sansita(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 3),
                  decoration: BoxDecoration(
                    color: HexColor('dde3ff'),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.5),
                    child: Text(
                      genres[1],
                      style: GoogleFonts.sansita(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 3),
                  decoration: BoxDecoration(
                    color: HexColor('dde3ff'),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.5),
                    child: Text(
                      genres[2],
                      style: GoogleFonts.sansita(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );

Widget buildDescriptionScreen(
    {required BuildContext context,
    required String title,
    required String imageUrl,
    required String description,
    required List<String> genres,
    required String length,
    required double rate}) {
  var cubit = MainCubit.get(context);
  return Scaffold(
    appBar: AppBar(
      backgroundColor: HexColor('121314'),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_sharp),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        title,
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
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 25),
                height: 210,
                width: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.contain,
                    ))),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Text(
                  description,
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
                  genres[0],
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
                  genres[1],
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
                  genres[2],
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
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Text(
                'Length',
                style: GoogleFonts.lato(color: Colors.grey[350], fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Text(
                'Language',
                style: GoogleFonts.lato(color: Colors.grey[350], fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Text(
                'Rating',
                style: GoogleFonts.lato(color: Colors.grey[350], fontSize: 20),
              ),
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 29),
              child: Text(
                length,
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
                  '$rate/10',
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
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        RatingBar.builder(
            itemSize: 36,
            itemCount: 10,
            initialRating: 10,
            direction: Axis.horizontal,
            allowHalfRating: true,
            minRating: 1,
            itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
            onRatingUpdate: (rating) {
              cubit.onRatingChange(rating);
              print(rating);
            }),
      ],
    ),
  );
}

Widget buildDescriptionScreen2(
    {required BuildContext context,
      required String title,
      required String imageUrl,
      required String description,
      required List<String> genres,
      required String length,
      required double rate}) {
  var cubit = MainCubit.get(context);
  return Scaffold(
    appBar: AppBar(
      backgroundColor: HexColor('121314'),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_sharp),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        title,
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
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 25),
                height: 210,
                width: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.contain,
                    ))),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Text(
                  description,
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
                  genres[0],
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
                  genres[1],
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
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Text(
                'Length',
                style: GoogleFonts.lato(color: Colors.grey[350], fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Text(
                'Language',
                style: GoogleFonts.lato(color: Colors.grey[350], fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Text(
                'Rating',
                style: GoogleFonts.lato(color: Colors.grey[350], fontSize: 20),
              ),
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 29),
              child: Text(
                length,
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
                  '$rate/10',
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
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        RatingBar.builder(
            itemSize: 36,
            itemCount: 10,
            initialRating: 10,
            direction: Axis.horizontal,
            allowHalfRating: true,
            minRating: 1,
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              cubit.onRatingChange(rating);
              print(rating);
            }),
      ],
    ),
  );
}
