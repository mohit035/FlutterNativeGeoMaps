import 'dart:io';

import 'package:favorite_places/models/place.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// mention which kind of data is managed by notifier class
class UserPlaceNotifier extends StateNotifier<List<Place>> {
  UserPlaceNotifier() : super(const []);
  void addPlace(String title, File image) {
    final newPlace = Place(title: title, image: image);
    state = [newPlace, ...state];
  }
}

// ignore: non_constant_identifier_names
final UserPlacesProvider =
    StateNotifierProvider<UserPlaceNotifier, List<Place>>(
        (ref) => UserPlaceNotifier());
