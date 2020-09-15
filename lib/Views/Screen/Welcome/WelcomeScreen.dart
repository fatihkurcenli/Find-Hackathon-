import 'package:FindHackathon/Core/Constants/App/app_image.dart';
import 'package:FindHackathon/Core/Service/Navigation/navigation_service.dart';
import 'package:FindHackathon/Views/Screen/Detail/detail_view.dart';
import 'package:flutter/material.dart';

import '../../../Core/Extension/context_extension.dart';
import '../../Widgets/fat_button.dart';
import '../../Widgets/fat_button_border.dart';
import '../../Widgets/space_seperator.dart';
import '../Login/login_view.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: Padding(
        padding: EdgeInsets.all(context.constLowValue),
        child: Column(
          children: [
            buildExpandedImage(),
            buildExpandedSignIn(context),
            SpaceSeperator(),
            buildExpandedSignUp(context),
            SpaceSeperator(),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }

  Expanded buildExpandedImage() {
    return Expanded(
      flex: 10,
      child: Container(
        child: Image.asset(AppImage.welcomeImage),
      ),
    );
  }

  Expanded buildExpandedSignIn(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: context.height * .1,
            width: context.width * .8,
            child: FatButtonBorder(
              text: "Sign In",
              onPressed: () {
                NavigatorService.instance.navigateTo(LoginView());
              },
            ),
          ),
        ],
      ),
    );
  }

  Expanded buildExpandedSignUp(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: context.height * .1,
        width: context.width * .8,
        child: FatButton(
          text: "Sign Up",
          onPressed: () {
            NavigatorService.instance.navigateTo(LoginView());
          },
        ),
      ),
    );
  }
}
