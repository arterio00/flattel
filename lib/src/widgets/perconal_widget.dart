import 'package:flutter/material.dart';
//enum SingingCharacter { me, meandag,some}
//import 'package:flattel/src/widgets/perconal_widget.dart';

import '../feature/ads/pages/personal_account.dart';
//enum SingingCharacter { me, agent, nothings }
class cardWid {
  SingingCharacter? character = SingingCharacter.me;

Widget cardWidget(String it, SingingCharacter tt ){
  return Container(child: Row(
      children: [
        Expanded(child: Text('$it')),

        Radio<SingingCharacter>(
          value: tt ,
          groupValue: character,
          onChanged: (SingingCharacter? value) {
           /* setState(() {
              character = value;
            });*/
          },
        )]),
    padding: const EdgeInsets.only(left: 15.0), );
}

Widget listTile(String name, String prop){
  return ListTile(
      title:   Text('$name'),
  subtitle: Container(
  padding: const EdgeInsets.only(
  top: 5.0, left: 5.0, bottom: 5.0),
  decoration: BoxDecoration(
  color: Colors.grey[100],
  borderRadius: const BorderRadius.horizontal(
  left: Radius.circular(15.0),
  right: Radius.circular(15.0),
  ),
  ),
  child:  Text('$prop',
  style: TextStyle(fontSize: 15))));
}
}
