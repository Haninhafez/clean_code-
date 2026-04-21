import 'package:clean_code_app/feature/users/domain/entities/sub_entities/address_entities.dart';

class UserEntities {
  final String name;
  final String phone;
  final String email;
  final AddressEntities address;

  UserEntities({required this.name, required this.phone, required this.email, required this.address});
}



