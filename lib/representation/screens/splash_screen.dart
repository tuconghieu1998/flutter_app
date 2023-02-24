import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/core/helpers/asset_helper.dart';
import 'package:flutter_app/core/helpers/image_helper.dart';
import 'package:flutter_app/representation/screens/intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static String routeName = '/splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    redirectIntroScreen();
  }

  void redirectIntroScreen () async {
    await Future.delayed(const Duration(seconds: 2));
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushNamed(IntroScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: ImageHelper.loadFromAsset(AssetHelper.imageBackgroundSplash, fit: BoxFit.fitWidth)),
        Positioned.fill(child: ImageHelper.loadFromAsset(AssetHelper.imageCircleSplash))
      ],
    );
  }
}