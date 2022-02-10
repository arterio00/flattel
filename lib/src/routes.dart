import 'package:flutter/widgets.dart';

import 'feature/ads/pages/home.dart';
import 'feature/ads/pages/new_ad.dart';
import 'feature/ads/pages/personal_account.dart';
import 'feature/authenticate/pages/registration.dart';
import 'feature/authenticate/pages/sign_in.dart';

abstract class Routes {
  static Map<String, Widget Function(BuildContext)> routing() {
    return {
      '/registration': (ctx) => const Registration(),
      '/signIn': (ctx) => const SignIn(),
      '/home': (ctx) => const Home(),
      '/new_ad': (ctx) => const NewAd(),
      '/personal_account': (ctx) => const PersonalAccount(),
    };
  }
}
