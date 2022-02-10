import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'feature/ads/pages/home.dart';
import 'feature/authenticate/auth_bloc/auth_bloc.dart';
import 'feature/authenticate/pages/login.dart';
import 'routes.dart';
import '/themes/theme.dart';
import '/generated/l10n.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      home: BlocBuilder<AuthBloc, AuthState>(
        builder: (BuildContext context, state) {
          return state.maybeWhen(
            authenticated: (user) => const Home(),
            orElse: () => const LoginScreen(),
          );

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
}

// MultiRepositoryProvider(
//           providers: [
//             RepositoryProvider<FireStore>(create: (ctx) => FireStore()),
//             RepositoryProvider<FireAuth>(create: (ctx) => FireAuth()),
//           ],
//           child: MultiBlocProvider(providers: [
//             BlocProvider(
//               create: (context) {
//                 final auth = context.read<FireAuth>();
//                 return AppBloc(auth);
//               },
//             ),
//             BlocProvider(
//               create: (context) {
//                 final auth = context.read<FireAuth>();
//                 return AuthCubit(auth);
//               },
//             ),
//             BlocProvider(
//               create: (context) {
//                 final store = context.read<FireStore>();
//                 final appBloc = context.read<AppBloc>();
//                 return UserBloc(store, appBloc);
//               },
//             ),
//             BlocProvider(
//               create: (context) {
//                 final store = context.read<FireStore>();
//                 final appBloc = context.read<AppBloc>();
//                 return AdsBloc(appBloc, store);
//               },
//             ),
//           ], child: const MyApp()))