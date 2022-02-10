import 'dart:async';

import 'package:flutter/widgets.dart';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'src/common/bloc/app_bloc_observer.dart';
import 'src/feature/ads/ads_bloc/ads_bloc.dart';
import 'src/feature/ads/logic/firestore.dart';
import 'src/feature/ads/my_user_cubit/my_user_cubit.dart';
import 'src/feature/authenticate/auth_bloc/auth_bloc.dart';
import 'src/feature/authenticate/logic/fire_auth.dart';
import 'src/my_app.dart';

void main() => runZonedGuarded<void>(
      () async {
        WidgetsFlutterBinding.ensureInitialized();
        await Firebase.initializeApp();
        // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        //   statusBarColor: Colors.transparent,
        // ));
        SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown]);
        BlocOverrides.runZoned(
          () {
            final store = FireStore();
            late final AuthBloc authBloc;
            runApp(
              MultiBlocProvider(
                providers: [
                  BlocProvider<AuthBloc>(
                    create: (context) => authBloc = AuthBloc(FireAuth(), store),
                  ),
                  BlocProvider(
                    create: (context) => AdsBloc(authBloc, store),
                  ),
                  BlocProvider(
                    create: (context) => MyUserCubit(store, authBloc),
                  ),
                ],
                child: const MyApp(),
              ),
            );
          },
          blocObserver: AppBlocObserver.instance(),
        );
      },
      (error, stackTrace) {},
    );
