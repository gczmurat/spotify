import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/widgets/appbar/app_bar.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/common/widgets/text_field.dart';
import 'package:spotify/core/configs/assets/vectors/app_vectors.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

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
                controller: TextEditingController(),
                hinText: "Full Name",
              ),
              const SizedBox(
                height: 16,
              ),
              BasicTextField(
                controller: TextEditingController(),
                hinText: "Enter Email",
              ),
              const SizedBox(
                height: 16,
              ),
              BasicTextField(
                iconButton: Icon(Icons.remove_red_eye_outlined),
                controller: TextEditingController(),
                hinText: "Password",
              ),
              const SizedBox(
                height: 33,
              ),
              BasicAppButton(
                title: "creat account",
                onPressed: () {},
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
