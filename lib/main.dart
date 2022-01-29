import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';

import 'bloc/ads_bloc/ads_bloc.dart';
import 'bloc/app_bloc/app_bloc.dart';
import 'bloc/auth_cubit/auth_cubit.dart';
import 'bloc/user_bloc/user_bloc.dart';
import 'data/repository/fire_auth.dart';
import 'data/repository/firestore.dart';
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown]);
  BlocOverrides.runZoned(() => runApp(MultiRepositoryProvider(
          providers: [
            RepositoryProvider<FireStore>(create: (ctx) => FireStore()),
            RepositoryProvider<FireAuth>(create: (ctx) => FireAuth()),
          ],
          child: MultiBlocProvider(providers: [
            BlocProvider(
              create: (context) {
                final auth = context.read<FireAuth>();
                return AppBloc(auth);
              },
            ),
            BlocProvider(
              create: (context) {
                final auth = context.read<FireAuth>();
                return AuthCubit(auth);
              },
            ),
            BlocProvider(
              create: (context) {
                final store = context.read<FireStore>();
                final appBloc = context.read<AppBloc>();
                return UserBloc(store, appBloc);
              },
            ),
            BlocProvider(
              create: (context) {
                final store = context.read<FireStore>();
                final appBloc = context.read<AppBloc>();
                return AdsBloc(appBloc, store);
              },
            ),
          ], child: const MyApp()))));
}
