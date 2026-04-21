import 'package:clean_code_app/core/errors/failuer.dart';
import 'package:clean_code_app/core/params/params.dart';
import 'package:clean_code_app/feature/users/domain/entities/user_entities.dart';
import 'package:clean_code_app/feature/users/domain/repositories/user_repositories.dart';
import 'package:dartz/dartz.dart';

class GetUser {
  final UserRepositories userRepositories;

  GetUser({required this.userRepositories});
Future<Either<Failure, UserEntities>> call({required userParams params})  {
  return userRepositories.getUsers(params: params);
}
  
}