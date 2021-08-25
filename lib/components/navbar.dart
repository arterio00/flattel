import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:swipe/themes/logo.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  height: 22,
                  width: 22.76,
                  fontSize: 22.77,
                ),
                const SizedBox(
                  width: 100,
                ),
                SizedBox(
                    child: SvgPicture.asset('assets/home_icon/settings.svg')),
              ],
            ),
            const SizedBox(
              height: 31,
            ),
            UserAccountsDrawerHeader(
              accountName: const Text(
                'Юля Туст',
                style: TextStyle(fontSize: 20),
              ),
              accountEmail:
                  const Opacity(opacity: 0.6, child: Text('email@gmail.com')),
              decoration: const BoxDecoration(color: Colors.transparent),
              currentAccountPicture: CircleAvatar(
                child: Image.asset(
                  'assets/home_icon/avatar.png',
                  fit: BoxFit.cover,
                  width: 80,
                  height: 80,
                ),
              ),
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
              onTap: () => null,
            ),
            ListTile(
              title: const Text(
                'Мое объявление',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              onTap: () => null,
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
          ],
        ),
      ),
    );
  }
}
