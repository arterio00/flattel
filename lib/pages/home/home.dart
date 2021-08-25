import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:swipe/components/navbar.dart';

class Home extends StatelessWidget {
  final User? user;
  const Home({Key? key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget list(String text) {
      return ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(color: Color(0xff27AEA4)),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xff27AEA4)),
              borderRadius: BorderRadius.circular(10)),
        ),
      );
    }

    Widget _customButton() {
      return FloatingActionButton(onPressed: () {});
    }

    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/home_icon/menu.svg')),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/home_icon/filters.svg')),
          const Center(
            child: Text(
              'Уточнить поиск',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xff828282),
              ),
            ),
          ),
          const SizedBox(width: 30),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/home_icon/check-circle.svg')),
          const Center(
            child: Text(
              'Уточнить поиск',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xff828282),
              ),
            ),
          ),
        ],
      ),
      // drawer: NavBar(),
      body: SizedBox(
        height: 32,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            list('Вторичный рынок'),
            list('Новостройки'),
            list('Все'),
            list('Коттеджи'),
          ],
        ),
      ),
      floatingActionButton: AnimatedContainer(
        width: 210,
        height: 52,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          gradient: const LinearGradient(
            colors: [
              Color(0xff56C385),
              Color(0xff41BFB5),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        duration: const Duration(milliseconds: 500),
        child: FloatingActionButton(onPressed: () {}),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
