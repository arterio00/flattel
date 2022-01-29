import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '/bloc/app_bloc/app_bloc.dart';
import '/bloc/user_bloc/user_bloc.dart';
import '/presenter/themes/logo.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataStore = context.read<UserBloc>();

    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff0A3137),
              Color(0xff094A46),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Logo(
                  height: 23,
                  width: 23,
                  fontSize: 22.77,
                ),
                const SizedBox(
                  width: 120,
                ),
                SizedBox(
                    child: SvgPicture.asset('assets/home_icon/settings.svg')),
              ],
            ),
            const SizedBox(
              height: 31,
            ),
            BlocBuilder<UserBloc, UserState>(
              bloc: dataStore,
              builder: (context, state) {
                return state.when(
                    loading: () => const FittedBox(
                        fit: BoxFit.none, child: CircularProgressIndicator()),
                    success: (data) {
                      return UserAccountsDrawerHeader(
                        accountName: Text(
                          data.firstName ?? 'nfjksnkv',
                          style: const TextStyle(fontSize: 20),
                        ),
                        accountEmail: Opacity(
                            opacity: 0.6,
                            child: Text(data.email ?? 'hfgjkdhjkf')),
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                        currentAccountPicture: CircleAvatar(
                            backgroundColor: Theme.of(context).primaryColor,
                            child: Icon(Icons.access_alarm)
                            // Image.network(
                            //   data.avatar ??
                            //       'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.closetag.com%2Ftutorial%2Fhtml%2Fhtml-images%2Fwhen-to-use-the-picture-element&psig=AOvVaw3_AO69Mo2vH42-un5sSQtj&ust=1641031122136000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCOiUy7rjjfUCFQAAAAAdAAAAABAD',
                            //   fit: BoxFit.cover,
                            //   width: 80,
                            //   height: 80,
                            // ),
                            ),
                      );
                    });
              },
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 20, 70, 20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.circular(35)),
                    fixedSize: const Size(190, 62),
                  ),
                  onPressed: () {
                    //  dataStore.add(const DataEvent.fetchUserFromFirestore());
                  },
                  child: const Text(
                    'Получить доступ',
                    style: TextStyle(fontSize: 16),
                  )),
            ),
            ListTile(
              title: const Text(
                'Лента объявлений',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              onTap: () => null,
            ),
            ListTile(
              title: const Text(
                'Личный кабинет',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              onTap: () => Navigator.pushNamed(context, '/personal_account'),
            ),
            ListTile(
              title: const Text('Мое объявление',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  )),
              onTap: () => Navigator.pushNamed(context, '/new_ad'),
            ),
            ListTile(
              title: const Text(
                'Избранное',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              onTap: () => null,
            ),
            ListTile(
              title: const Text(
                'Сохраненные фильтры',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              onTap: () => null,
            ),
            ListTile(
              title: const Text(
                'Нотариусы',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              onTap: () => null,
            ),
            ListTile(
              title: const Text(
                'МФЦ',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              onTap: () => null,
            ),
            ListTile(
              title: const Text(
                'Обратная связь',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              onTap: () => null,
            ),
            ListTile(
              title: const Text(
                'Выйти',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              onTap: () => context.read<AppBloc>().add(const AppEvent.logOut()),
            ),
          ],
        ),
      ),
    );
  }
}
