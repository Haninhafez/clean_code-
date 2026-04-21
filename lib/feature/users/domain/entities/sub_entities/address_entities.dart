import 'package:clean_code_app/feature/users/domain/entities/sub_entities/geo_entities.dart';

class AddressEntities {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final GeoEntities geo;

  AddressEntities({required this.street, required this.suite, required this.city, required this.zipcode, required this.geo});

}