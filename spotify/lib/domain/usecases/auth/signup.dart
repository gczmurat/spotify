import 'package:spotify/core/configs/usecase/usecase.dart';
import 'package:spotify/data/models/auth/create_user_req.dart';
import 'package:dartz/dartz.dart';
import 'package:spotify/domain/repository/auth/auth.dart';
import 'package:spotify/initialize/service_locator.dart';

class SignupUseCase implements Usecase<Either,CreateUserReq> {


  @override
  Future<Either> call({CreateUserReq ? params}) async {
    return sl<AuthRepository>().signUp(params!);
  }

}