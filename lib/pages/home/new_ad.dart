import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swipe/pages/home/components/adding_photo.dart';
import 'package:swipe/pages/home/components/my_dropmenu.dart';
import 'package:swipe/pages/home/components/my_label_field.dart';

import 'components/my_text_form.dart';

class NewAd extends StatefulWidget {
  const NewAd({Key? key}) : super(key: key);

  @override
  _NewAdState createState() => _NewAdState();
}

class _NewAdState extends State<NewAd> {
  List<File> images = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
        elevation: 0.0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/home_icon/chevron-down.svg'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          const Expanded(
            child: Center(
              child: Text(
                'Новое объявление',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/home_icon/x-circle.svg')),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 17, left: 10, right: 10),
        child: ListView(
          //  physics: const ClampingScrollPhysics(),
          children: [
            MyLabelField(
              prefixText: 'Адрес',
              suffixText: 'Указать на карте',
              suffixIcon: SvgPicture.asset('assets/home_icon/map.svg'),
            ),
            MyTextFormField(
              onChanged: (value) {},
              hintText: 'р-н Центральный, ул. Темерязева 7',
            ),
            MyLabelField(
              prefixText: 'Выбрать ЖК',
              suffixText: 'Добавить в шахматку',
              suffixIcon: SvgPicture.asset('assets/home_icon/grid.svg'),
            ),
            const MyDropMenu(hintText: "ЖК |"),
            const SizedBox(height: 15),
            const MyDropMenu(hintText: 'Апартаменты'),
            const MyLabelField(prefixText: 'Количество комнат'),
            const MyDropMenu(hintText: '1 комнатная'),
            const MyLabelField(prefixText: 'Планировка'),
            const MyDropMenu(hintText: 'Студия, санузел'),
            const MyLabelField(prefixText: 'Жилое состояние'),
            const MyDropMenu(hintText: 'Требует ремонта'),
            const MyLabelField(prefixText: 'Общая площадь'),
            const MyTextFormField(hintText: '70 м²'),
            const MyLabelField(prefixText: 'Площадь кухни'),
            const MyTextFormField(hintText: '28.5 м²'),
            const MyLabelField(prefixText: 'Балкон/лоджия'),
            const MyDropMenu(hintText: 'Да'),
            const MyLabelField(prefixText: 'Тип отопления'),
            const MyDropMenu(hintText: 'Газовое'),
            const MyLabelField(prefixText: 'Варианты расчета'),
            const MyDropMenu(hintText: 'Мат.капитал'),
            const MyLabelField(prefixText: 'Коммисия агенту'),
            const MyDropMenu(hintText: '100 000 ₽'),
            const MyLabelField(prefixText: 'Способ связи'),
            const MyDropMenu(hintText: 'Звонок + сообщение'),
            const MyLabelField(prefixText: 'Описание'),
            const MyTextFormField(
                fontSize: 12,
                maxLines: 13,
                hintText:
                    'Особенная квартира в одном из самых престижных и закрытых элитных домов - Diadema Club House. Крестовский остров. Собственная терраса 109 кв. м с газонным покрытием. Прямой вид на воду, Среднюю Невку. Высокие потолки 3,4 м. Панорамные окна. Свободная планировка. Теплые водяные полы в санузлах. 2 машиноместа в подземном паркинге. Жилой комплекс располагается на Крестовском острове - сложившейся локации элитной недвижимости.'),
            const MyLabelField(prefixText: 'Цена'),
            const MyTextFormField(hintText: '3 400 000 ₽'),
            const SizedBox(height: 10),
            AddingPhoto(
              file: (value) {
                images.add(value);
              },
            ),
            const SizedBox(height: 15),
            SafeArea(
              minimum: const EdgeInsets.only(bottom: 10),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    primary: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [
                          Color(0xff56C486),
                          Color(0xff42C0B5),
                        ]),
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      child: const Text(
                        'Продолжить',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
