import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify/data/models/auth/create_user_req.dart';
import 'package:dartz/dartz.dart';

abstract class AuthFirebaseService {
  Future<Either> signUp(CreateUserReq createUserReq);
  Future<void> signIn();
}

class AuthFirebaseServiceImpl implements AuthFirebaseService {
  @override
  Future<void> signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: 'email',
        password: 'password',
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }

  @override
  Future<Either> signUp(CreateUserReq createUserReq) async {
    try {

     var data =  await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: createUserReq.email,
        password:createUserReq.password
      );
      
     

      return const Right('Signup was Successful');

    } on FirebaseAuthException catch(e) {
      String message = '';
      
      if(e.code == 'weak-password') {
        message = 'The password provided is too weak';
      } else if (e.code == 'email-already-in-use') {
        message = 'An account already exists with that email.';
      }


      return Left(message);
    }
  }
  
  
}
