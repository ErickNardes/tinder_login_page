// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:tinder_login_page/app/core/shared/theme_colors.dart';
import 'package:tinder_login_page/app/features/auth/submodules/login_page/presenter/widgets/custom_container_buttom_widget.dart';

class LogiinPage extends StatelessWidget {
  const LogiinPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
        ),
        backgroundColor: ThemeColors.backgroudColorLogin,
        elevation: 0,
      ),
      body: Container(
        height: size.height,
        decoration: const BoxDecoration(
          color: ThemeColors.backgroudColorLogin,
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 12, left: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: SvgPicture.asset(
                      'lib/assets/icons/tinder.svg',
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'tinder',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              Center(
                child: Text(
                  'By tapping Create Account or Sign In, you agree to our Terms. Learn how we process your data int our Privacy Policy and Cookies Policy',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              CustomButtonWidget(
                icon: SvgPicture.asset(
                  'lib/assets/icons/apple.svg',
                  color: Colors.white,
                ),
                title: 'SIGN IN WITH APPLE',
              ),
              CustomButtonWidget(
                icon: SvgPicture.asset(
                  'lib/assets/icons/face.svg',
                  color: Colors.white,
                ),
                title: 'SIGN IN WITH FACEBOOK',
              ),
              CustomButtonWidget(
                icon: SvgPicture.asset(
                  'lib/assets/icons/message2.svg',
                  color: Colors.white,
                ),
                title: 'SIGN IN WITH PHONE NUMBER',
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Trouble Signing In?',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
