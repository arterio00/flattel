import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'maps.dart';
import 'navbar.dart';
import 'personal_account.dart';
import 'new_ad.dart';

class Home extends StatelessWidget {
  final User? user;
  const Home({Key? key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.green,
      ),
      routes: {
        '/new_ad': (context) => const NewAd(),
        '/personal_account': (context) => const PersonalAccount(),
        //   '/registration': (context) => const Registration(),
      },
      home: Scaffold(
        drawer: NavBar(logOut: () {
          FirebaseAuth.instance.signOut();
        }),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: SvgPicture.asset('assets/home_icon/menu.svg')),
          ),
          actions: [
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                elevation: 0,
                // shadowColor: Colors.transparent,
              ),
              onPressed: () {},
              icon: SvgPicture.asset('assets/home_icon/filters.svg'),
              label: const Text(
                'Уточнить поиск',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff828282),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(width: 30),
            ElevatedButton.icon(
              onPressed: () {},
              icon: SvgPicture.asset('assets/home_icon/check-circle.svg'),
              style:
                  ElevatedButton.styleFrom(primary: Colors.white, elevation: 0),
              label: const Text(
                'Уточнить поиск',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff828282),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              color: Colors.black,
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 32,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  list('Вторичный рынок'),
                  const SizedBox(width: 10),
                  list('Новостройки'),
                  const SizedBox(width: 10),
                  list('Все'),
                  const SizedBox(width: 10),
                  list('Коттеджи'),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(child: const MapSample())
            // Expanded(
            //   child: StaggeredGridView.countBuilder(
            //     crossAxisCount: 4,
            //     itemBuilder: (BuildContext context, int index) => Container(
            //         color: Colors.green,
            //         child: Center(
            //           child: CircleAvatar(
            //             backgroundColor: Colors.white,
            //             child: Text('$index'),
            //           ),
            //         )),
            //     staggeredTileBuilder: (int index) =>
            //         StaggeredTile.count((index + 1) % 7 == 0 ? 4 : 2, 2.09),
            //     mainAxisSpacing: 20.0,
            //     crossAxisSpacing: 15.0,
            //   ),
            // )
          ],
        ),
        floatingActionButton: AnimatedContainer(
            width: 210,
            height: 52,
            decoration: const BoxDecoration(
              // boxShadow: [
              //   BoxShadow(
              //     offset: Offset(0, 3),
              //     color: Colors.grey,
              //   ),
              // ],
              borderRadius: BorderRadius.all(Radius.circular(35)),
              gradient: LinearGradient(
                colors: [
                  Color(0xff56C385),
                  Color(0xff41BFB5),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            duration: const Duration(milliseconds: 50),
            child: Row(
              children: [
                myButton(
                  onPressed: () {},
                  child: SvgPicture.asset(
                    'assets/home_icon/list.svg',
                    color: Colors.white,
                  ),
                ),
                const Expanded(
                  child: Text(
                    'Лента',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                ),
                myButton(
                  onPressed: () {},
                  child: SvgPicture.asset(
                    'assets/home_icon/map.svg',
                    color: Colors.white,
                  ),
                )
              ],
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }

  Widget list(String text) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(
            color: Color(0xff27AEA4), fontWeight: FontWeight.w400),
      ),
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: Colors.white,
        shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xff27AEA4)),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  Widget myButton({
    required Function? Function() onPressed,
    required Widget child,
  }) {
    return Container(
      width: 52,
      height: 52,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35), color: Colors.amber),
      child: IconButton(
        icon: child,
        onPressed: onPressed,
      ),
    );
  }
}
