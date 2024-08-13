import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/common/widgets/elipse.dart';
import 'package:spotify/core/configs/assets/images/app_images.dart';
import 'package:spotify/core/configs/assets/vectors/app_vectors.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.choose_mode_background),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(AppVectors.spotify_Splash)),
                const Spacer(),
                const Text(
                  "Choose Mode",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Elipse(
                            color: Color(0xff30393C),
                            icon: AppVectors.moon_icon),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text("Dark Mode",
                            style: TextStyle(
                                color: AppColors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 17)),
                      ],
                    ),
                    Column(
                      children: [
                        Elipse(
                            color: Color(0xff30393C),
                            icon: AppVectors.sun_icon),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text("Dark Mode",
                            style: TextStyle(
                                color: AppColors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 17)),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                BasicAppButton(
                  title: "Continue",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChooseModePage()));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
