
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:things_todo/app/domain/bodies/register_body.dart';

import 'package:things_todo/core/errors/network_exceptions.dart';
import 'package:things_todo/core/use_case/use_case.dart';
import 'package:things_todo/app/domain/repositories/user_repository.dart';

@injectable
class PostRegisterUseCase implements UseCase<String, RegisterBody> {

  PostRegisterUseCase(this._userRepository);
  final UserRepository _userRepository;
  @override
  Future<Either<NetworkExceptions,String>> call(
    RegisterBody body,
  ) async => await _userRepository.register(body);
}


  
