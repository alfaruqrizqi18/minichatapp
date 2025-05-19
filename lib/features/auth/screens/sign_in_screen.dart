import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../core/extensions/style_extension.dart';
import '../../../core/utils/utils.dart';
import '../../../core/widgets/app_bar/app_bar_v1.dart';
import '../../../core/widgets/buttons/cosmo_filled_button.dart';
import '../../../core/widgets/images/cosmo_asset_image.dart';
import '../../../generated/assets.gen.dart';
import '../providers/app_auth_provider.dart';

@RoutePage()
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CosmoAppBar(
        title: Hero(
          tag: 'logo',
          child: FlutterLogo(size: 20, textColor: context.primaryColor),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(
                TextSpan(
                  text: "Mini Chat",
                  style: GoogleFonts.dmSerifDisplay().copyWith(
                    color: context.onSurfaceColor,
                    fontSize: 30,
                  ),
                  children: [
                    TextSpan(
                      text: "App",
                      style: GoogleFonts.dmSerifDisplay().copyWith(
                        color: context.primaryColor,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          vSpace(screenHeight() * .06),
          CosmoFilledButton(
            onPressed: () async {
              final authP = context.read<AppAuthProvider>();
              authP.signIn();
            },
            buttonColor: context.surfaceColor,
            title: "Sign in with Google",
            textColor: context.onSurfaceColor,
            icon: CosmoAssetImage(path: Assets.icons.google.path, width: 25),
          ),
        ],
      ),
    );
  }
}
