import 'package:clean_code_app/core/errors/failuer.dart';
import 'package:clean_code_app/core/params/params.dart';
import 'package:clean_code_app/feature/users/domain/entities/user_entities.dart';
import 'package:dartz/dartz.dart';

abstract class UserRepositories {
  Future<Either<Failure, UserEntities>> getUsers({required userParams params});
}
