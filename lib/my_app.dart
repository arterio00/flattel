import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/l10n.dart';
import '/bloc/app_bloc/app_bloc.dart';
import 'presenter/pages/authenticate/login.dart';
import 'presenter/pages/home.dart';
import 'presenter/themes/theme.dart';
import 'presenter/widgets/platform_widget.dart';
import 'routes.dart';

class MyApp extends PlatformWidget<MaterialApp, CupertinoApp> {
  const MyApp({Key? key}) : super(key: key);

  @override
  createAndroidWidget(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      routes: Routes.routing(),
      theme: MyThemes.lightTheme,
      home: BlocBuilder<AppBloc, AppState>(
        builder: (BuildContext context, state) {
          return state.when(
              unAuthenticated: () => const LoginScreen(),
              authenticated: (user) => const Home());

          // if (snapshot.connectionState == ConnectionState.waiting) {
          //   return const Center(child: CircularProgressIndicator());
          // }
          // if (snapshot.hasData) {
          //   return const Home();

          //   //return NewAd();
          //   //return PersonalAccount();
          // }
        },
      ),
    );
  }

  @override
  CupertinoApp createIosWidget(BuildContext context) {
    return CupertinoApp(
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        routes: Routes.routing(),
        supportedLocales: S.delegate.supportedLocales,
        theme:
            MaterialBasedCupertinoThemeData(materialTheme: MyThemes.lightTheme),
        home: BlocBuilder<AppBloc, AppState>(
            bloc: context.read<AppBloc>(),
            builder: (BuildContext context, state) {
              return state.when(
                  unAuthenticated: () => const LoginScreen(),
                  authenticated: (user) => const Home());
            }));
  }
}
