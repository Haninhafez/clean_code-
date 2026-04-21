import 'package:clean_code_app/core/database/api/end_points.dart';
import 'package:clean_code_app/feature/users/data/models/sub_models/address_model.dart';
import 'package:clean_code_app/feature/users/data/models/sub_models/company_user_model.dart';
import 'package:clean_code_app/feature/users/domain/entities/user_entities.dart';

class UserModels extends UserEntities {
  int id;
  final String username;
  final String website;
  final CompanyUserModel company;

  UserModels({
    required this.id,
    required super.name,
    required super.phone,
    required super.email,
    required super.address,
    required this.username,
    required this.website,
    required this.company,
  });

  factory UserModels.fromJson(Map<String, dynamic> json) {
    return UserModels(
      id: json[ApiKey.id],
      name: json[ApiKey.name],
      phone: json[ApiKey.phone],
      email: json[ApiKey.email],
      address: AddressModel.fromJson(json[ApiKey.address]),
      username: json[ApiKey.username],
      website: json[ApiKey.website],
      company: CompanyUserModel.fromJson(json[ApiKey.company]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      ApiKey.id: id,
      ApiKey.name: name,
      ApiKey.phone: phone,
      ApiKey.email: email,
      ApiKey.address: address.toJson(),
      ApiKey.username: username,
      ApiKey.website: website,
      ApiKey.company: company.toJson(),
    };
  }
}
