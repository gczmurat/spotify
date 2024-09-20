import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/widgets/appbar/app_bar.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/common/widgets/text_field.dart';
import 'package:spotify/core/configs/assets/vectors/app_vectors.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';
import 'package:spotify/data/models/auth/create_user_req.dart';
import 'package:spotify/domain/usecases/auth/signup.dart';
import 'package:spotify/initialize/service_locator.dart';
import 'package:spotify/root/pages/root.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
        title: SvgPicture.asset(
          AppVectors.spotify_Splash,
          height: 40,
          width: 40,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 47,
              ),
              _registerText(),
              const SizedBox(
                height: 15,
              ),
              _clickText(),
              const SizedBox(
                height: 26,
              ),
              BasicTextField(
                controller: _fullNameController,
                hinText: "Full Name",
              ),
              const SizedBox(
                height: 16,
              ),
              BasicTextField(
                controller: _emailController,
                hinText: "Enter Email",
              ),
              const SizedBox(
                height: 16,
              ),
              BasicTextField(
                iconButton: Icon(Icons.remove_red_eye_outlined),
                controller: _passwordController,
                hinText: "Password",
              ),
              const SizedBox(
                height: 33,
              ),
              BasicAppButton(
                title: "create account",
                onPressed: () async {
                var result = await sl<SignupUseCase>().call(
                  params: CreateUserReq(
                    fullName: _fullNameController.text.toString(),
                    email: _emailController.text.toString(),
                    password: _passwordController.text.toString()
                  )
                );
                result.fold(
                  (l){
                    var snackbar = SnackBar(content: Text(l),behavior: SnackBarBehavior.floating,);
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  },
                  (r){
                    Navigator.pushAndRemoveUntil(
                      context, 
                      MaterialPageRoute(builder: (BuildContext context) => const RootPage()), 
                      (route) => false
                    );
                  }
                );
              },
              ),
              const SizedBox(
                height: 50,
              ),
              _signinText(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _registerText() {
    return const Text(
      "Register",
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
    );
  }

  Widget _clickText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "If you need any support",
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
        ),
        TextButton(
            onPressed: () {},
            child: const Text(
              "Click Here",
              style: TextStyle(color: AppColors.primary),
            ))
      ],
    );
  }

  Widget _signinText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Do you have an account?",
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
        ),
        TextButton(
            onPressed: () {},
            child: const Text(
              "sign in",
              style: TextStyle(color: Colors.blue),
            ))
      ],
    );
  }
}
