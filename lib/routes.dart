import 'package:flutter/widgets.dart';

import 'presenter/pages/authenticate/registration.dart';
import 'presenter/pages/authenticate/sign_in.dart';
import 'presenter/pages/home.dart';
import 'presenter/pages/new_ad.dart';
import 'presenter/pages/personal_account.dart';

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
