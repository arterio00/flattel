import 'package:flattel/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../ads_bloc/ads_bloc.dart';

import '../widgets/map.dart';
import '../widgets/my_gridview.dart';
import '../widgets/navbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isMap = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: SvgPicture.asset('assets/home_icon/menu.svg'));
        }),
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
      body: Stack(
        children: [
          //    Expanded(child: const MapSample())
          !isMap ? const MyGridView() : const MyMap(),
          AnimatedContainer(
            margin: isMap ? const EdgeInsets.only(top: 10) : null,
            duration: const Duration(seconds: 200),
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
        ],
      ),
      floatingActionButton: customButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget customButton() {
    return Row(
      mainAxisAlignment:
          !isMap ? MainAxisAlignment.center : MainAxisAlignment.end,
      children: [
        Container(
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
            child: Row(
              children: [
                myButton(
                  color: !isMap ? Colors.white : const Color(0x20ffffff),
                  onPressed: () {
                    setState(() {
                      isMap = false;
                    });
                  },
                  child: SvgPicture.asset(
                    'assets/home_icon/list.svg',
                    color: !isMap ? const Color(0xFF4CC19A) : Colors.white,
                  ),
                ),
                Expanded(
                  child: Text(
                    !isMap
                        ? S.of(context).homeTextButton1
                        : S.of(context).homeTextButton2,
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                ),
                myButton(
                  color: !isMap ? const Color(0x20ffffff) : Colors.white,
                  onPressed: () {
                    setState(() {
                      isMap = true;
                    });
                  },
                  child: SvgPicture.asset(
                    'assets/home_icon/map.svg',
                    color: !isMap ? Colors.white : const Color(0xFF4CC19A),
                  ),
                )
              ],
            )),
        if (isMap)
          const SizedBox(
            width: 30,
          ),
        if (isMap)
          myButton(
              onPressed: () {},
              child: const Icon(
                Icons.navigation_outlined,
                color: Color(0xFF4CC19A),
              ),
              color: Colors.white,
              size: 40),
        if (isMap)
          const SizedBox(
            width: 10,
          ),
      ],
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

  Widget myButton(
      {required Function? Function() onPressed,
      required Widget child,
      required Color color,
      double size = 52}) {
    return Container(
      width: size,
      height: size,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(26), color: color),
      child: IconButton(
        icon: child,
        onPressed: onPressed,
      ),
    );
  }
}
