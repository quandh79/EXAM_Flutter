import 'package:exam_flutter/model/place.dart';

abstract class PlaceService {
  Future<List<Place>> getAllPlace();

}