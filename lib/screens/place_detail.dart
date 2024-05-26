import 'package:favorite_places/models/place.dart';
import 'package:flutter/material.dart';

class PlaceDetailScreen extends StatelessWidget {
  const PlaceDetailScreen({super.key, required this.place});
  final Place place;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text(
          place.title,
        ),
      ),
      body: Stack(
        children: [
          Image.file(
            place.image,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
        ],
      ),

      // body: Center(
      //   child: Text(
      //     place.title,
      //     style: Theme.of(context)
      //         .textTheme
      //         .bodyLarge!
      //         .copyWith(color: Theme.of(context).colorScheme.onBackground),
      //   ),
      // ),
    );
  }
}
