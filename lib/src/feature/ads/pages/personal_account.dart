import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flattel/src/widgets/perconal_widget.dart';
//import '../widgets/perconal_widget.dart';

enum SingingCharacter { me, agent, nothings }

class PersonalAccount extends StatefulWidget {

  const PersonalAccount({

    Key? key,
  }) : super(key: key);

  @override
  State<PersonalAccount> createState() => _PersonalAccountState();
}

class _PersonalAccountState extends State<PersonalAccount> {
  cardWid? cW= cardWid();
  SingingCharacter? character = SingingCharacter.me;
  static const Map<String,SingingCharacter> listtest = {'Мне': SingingCharacter.me,'Агенту': SingingCharacter.agent,'Отказаться': SingingCharacter.nothings  };
  late final _controller = TextEditingController();

  final firestore = FirebaseFirestore.instance;

  @override
  void intState(){
    //cW = cardWid();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: ListView(
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.perm_contact_cal),
                ),
                Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.grey.shade200,
                          width: 0.5,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: ExpansionTile(
                      textColor: Colors.black,
                      title: const Text('Мои контакты'),
                      children: <Widget>[
                        ListTile(
                          title: const Text('Имя'),
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
                              child: const Text('Юлия',
                                  style: TextStyle(fontSize: 15))),
                        ),
                        ListTile(
                          title: const Text('Фамилия'),
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
                              child: const Text('Фамилия',
                                  style: TextStyle(fontSize: 15))),
                        ),
                        ListTile(
                            title: const Text('Телефон'),
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
                                child: const Text('912-231-25-12',
                                    style: TextStyle(fontSize: 15)))),
                        ListTile(
                            title: const Text('Email'),
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
                                child: const Text('test@mail.com',
                                    style: TextStyle(fontSize: 15)))),
                      ],
                    )),
                Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.grey.shade200,
                          width: 0.5,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: ExpansionTile(
                      textColor: Colors.black,
                      title: const Text('Контакты Агента'),
                      children: <Widget>[
                        ListTile(
                          title: const Text('Имя'),
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
                              child: const Text('Юлия',
                                  style: TextStyle(fontSize: 15))),
                        ),
                        ListTile(
                          title: const Text('Фамилия'),
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
                              child: const Text('Фамилия',
                                  style: TextStyle(fontSize: 15))),
                        ),
                        ListTile(
                            title: const Text('Телефон'),
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
                                child: const Text('912-231-25-12',
                                    style: TextStyle(fontSize: 15)))),
                        ListTile(
                            title: const Text('Email'),
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
                                child: const Text('test@mail.com',
                                    style: TextStyle(fontSize: 15)))),
                      ],
                    )),
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.grey.shade200,
                        width: 0.5,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  //Column(children: <Widget>[Card( child:
                  child: ExpansionTile(
                    textColor: Colors.black,
                    title: const Text(
                      'Управление подпиской',
                    ),
                    children: <Widget>[
                      const ListTile(
                        title: Text('Оплачено до  20.2.2022'),
                      ),
                      ListTile(
                          title: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Подписка'),
                      )),
                      const ListTile(
                        title: Text('Отменить автопродление'),
                      ),
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.grey.shade200,
                        width: 0.5,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  //Column(children: <Widget>[Card( child:
                  child: ExpansionTile(
                    collapsedIconColor: Colors.black,
                    textColor: Colors.black,
                    title: const Text(
                      'Уведомления',
                    ),
                    children: listtest.entries.map((e) => cW!.cardWidget(e.key,e.value)).toList(),
                  ),
                )
              ],
            )));
    /*showModalBottomSheet<void>(
      context: context,
      child: Text('text menu'),
    );*/
  }

}
