import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:swipe/themes/logo.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key, required this.logOut}) : super(key: key);
  final Function()? logOut;
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
                  onPressed: () {},
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
              onTap: logOut,
            ),
          ],
        ),
      ),
    );
  }
}
