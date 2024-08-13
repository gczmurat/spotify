import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/widgets/appbar/app_bar.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/common/widgets/helpers/is_dark_mode.dart';
import 'package:spotify/core/configs/assets/images/app_images.dart';
import 'package:spotify/core/configs/assets/vectors/app_vectors.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';
import 'package:spotify/presentation/auth/pages/signin.dart';
import 'package:spotify/presentation/auth/pages/signup.dart';

class SignupOrSigninPage extends StatelessWidget {
  const SignupOrSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BasicAppBar(),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(AppVectors.top_patern),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(AppVectors.bottom_patern),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(AppImages.billie_eilish),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppVectors.spotify_Splash),
                  const SizedBox(
                    height: 55,
                  ),
                  const Text(
                    "Enjoy listening to music",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  const Text(
                    "Spotify is a proprietary Swedish audio streaming and media services provider",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: BasicAppButton(
                          title: "Register",
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SignupPage(),
                            ));
                          },
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SigninPage(),
                                ));
                              },
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                    color: context.isDarkMode
                                        ? Colors.white
                                        : const Color(0xff313131)),
                              )))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
