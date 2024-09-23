import 'package:spotify/core/configs/usecase/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:spotify/data/models/auth/signin_user_req.dart';
import 'package:spotify/domain/repository/auth/auth.dart';
import 'package:spotify/initialize/service_locator.dart';

class SigninUseCase implements Usecase<Either,SigninUserReq> {


  @override
  Future<Either> call({SigninUserReq ? params}) async {
    return sl<AuthRepository>().signIn(params!);
  }

}