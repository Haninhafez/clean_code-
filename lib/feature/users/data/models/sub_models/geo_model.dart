import 'package:clean_code_app/core/database/api/end_points.dart';
import 'package:clean_code_app/feature/users/domain/entities/sub_entities/geo_entities.dart';

class GeoModel extends GeoEntities {
  GeoModel({required super.lat, required super.lng});

  factory GeoModel.fromJson(Map<String, dynamic> json) {
    return GeoModel(lat: json[ApiKey.lat], lng: json[ApiKey.lng]);
  }

  Map<String, dynamic> toJson() {
    return {ApiKey.lat: lat, ApiKey.lng: lng};
  }
}