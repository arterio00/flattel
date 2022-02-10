import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flattel/src/widgets/my_button.dart';
import 'package:flattel/src/widgets/new_ad/adding_photo.dart';
import 'package:flattel/src/widgets/new_ad/my_dropmenu.dart';
import 'package:flattel/src/widgets/new_ad/my_label_field.dart';
import 'package:flattel/src/widgets/new_ad/my_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '/generated/l10n.dart';

class NewAd extends StatefulWidget {
  const NewAd({Key? key}) : super(key: key);

  @override
  _NewAdState createState() => _NewAdState();
}

class _NewAdState extends State<NewAd> {
  List<File> _images = [];
  String? _street;
  String? _totalFloorArea;
  String? _description;
  String? _kitchenFloorArea;
  String? _cost;
  String? _commissionToAgent;
  String? _jk;
  String? _assignment;
  String? _numberOfRooms;
  String? _apartmentLayout;
  String? _condition;
  String? _terrace;
  String? _typeOfHeating;
  String? _calculationOptions;
  String? _communicationMethod;

  void _push() async {
    final User? user = FirebaseAuth.instance.currentUser;
    List<String> urls = [];
    final _ref = FirebaseStorage.instance
        .ref()
        .child('images/' + user!.uid)
        .child('${DateTime.now()}' '.jpg');

    for (var item in _images) {
      await _ref.putFile(item);
      var result = await _ref.getDownloadURL();
      urls.add(result);
    }

    FirebaseFirestore.instance.collection('ads').doc(user.uid).set({
      'street': _street,
      'total floor area': _totalFloorArea,
      'kitchen floor area': _kitchenFloorArea,
      'cost': _cost,
      'description': _description,
      'жк': _jk,
      'images': urls,
      'commission': _commissionToAgent,
      'assignment': _assignment,
      'number of rooms': _numberOfRooms,
      'apartment layout': _apartmentLayout,
      'condition': _condition,
      'terrace': _terrace,
      'type of heating': _typeOfHeating,
      'calculation options': _calculationOptions,
      'communication method': _communicationMethod
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF5F5F5),
        elevation: 0.0,
        leading: IconButton(
          icon: SvgPicture.asset('assetsads_icon/chevron-down.svg'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          Expanded(
            child: Center(
              child: Text(
                S.of(context).adAppBarTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assetsads_icon/x-circle.svg')),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 17, left: 10, right: 10).copyWith(),
        child: FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
            future: FirebaseFirestore.instance
                .collection('dropdown_lists_ad')
                .doc('2mgtO8WWdQIumXw3G9Fj')
                .get(),
            builder: (context, dataSnapshot) {
              return !dataSnapshot.hasData
                  ? const Center(child: CircularProgressIndicator())
                  : ListView(
                      //  physics: const ClampingScrollPhysics(),
                      children: [
                        MyLabelField(
                          prefixText: S.of(context).adPrefixText1,
                          suffixText: S.of(context).adSuffixText1,
                          suffixIcon:
                              SvgPicture.asset('assetsads_icon/map.svg'),
                        ),
                        MyTextFormField(
                          validation: (value) =>
                              value == null ? S.of(context).emptyField : null,
                          onChanged: (value) {
                            _street = value;
                          },
                          hintText: S.of(context).adHintText1,
                        ),
                        MyLabelField(
                          prefixText: S.of(context).adPrefixText2,
                          suffixText: S.of(context).adSuffixText2,
                          suffixIcon:
                              SvgPicture.asset('assetsads_icon/grid.svg'),
                        ),
                        MyDropMenu(
                          testList: dataSnapshot.data!.get('жк'),
                          value: (String value) {
                            _jk = value;
                          },
                        ),
                        const SizedBox(height: 15),
                        MyDropMenu(
                          testList: dataSnapshot.data!.get('назначение'),
                          value: (String value) {
                            _assignment = value;
                          },
                        ),
                        MyLabelField(
                          prefixText: S.of(context).adPrefixText3,
                        ),
                        MyDropMenu(
                          testList: dataSnapshot.data!.get('количество комнат'),
                          value: (String value) {
                            _numberOfRooms = value;
                          },
                        ),
                        MyLabelField(prefixText: S.of(context).adPrefixText4),
                        MyDropMenu(
                          testList: dataSnapshot.data!.get('планировка'),
                          value: (String value) {
                            _apartmentLayout = value;
                          },
                        ),
                        MyLabelField(prefixText: S.of(context).adPrefixText5),
                        MyDropMenu(
                          testList: dataSnapshot.data!.get('жилое состояние'),
                          value: (String value) {
                            _condition = value;
                          },
                        ),
                        MyLabelField(prefixText: S.of(context).adPrefixText6),
                        MyTextFormField(
                          hintText: S.of(context).adHintText2,
                          onChanged: (value) {
                            _totalFloorArea = value;
                          },
                        ),
                        const MyLabelField(prefixText: 'Площадь кухни'),
                        MyTextFormField(
                          hintText: S.of(context).adHintText3,
                          onChanged: (value) {
                            _kitchenFloorArea = value;
                          },
                        ),
                        MyLabelField(
                          prefixText: S.of(context).adPrefixText8,
                        ),
                        MyDropMenu(
                          testList: dataSnapshot.data!.get('балкон'),
                          value: (String value) {
                            _terrace = value;
                          },
                        ),
                        MyLabelField(prefixText: S.of(context).adPrefixText9),
                        MyDropMenu(
                          testList: dataSnapshot.data!.get('тип отопления'),
                          value: (String value) {
                            _typeOfHeating = value;
                          },
                        ),
                        MyLabelField(prefixText: S.of(context).adPrefixText10),
                        MyDropMenu(
                          testList: dataSnapshot.data!.get('варианты расчета'),
                          value: (String value) {
                            _calculationOptions = value;
                          },
                        ),
                        MyLabelField(prefixText: S.of(context).adPrefixText11),
                        MyTextFormField(
                          hintText: S.of(context).adHintText4,
                          onChanged: (value) {
                            _commissionToAgent = value;
                          },
                        ),
                        MyLabelField(prefixText: S.of(context).adPrefixText12),
                        MyDropMenu(
                          testList: dataSnapshot.data!.get('способ связи'),
                          value: (String value) {
                            _communicationMethod = value;
                          },
                        ),
                        MyLabelField(prefixText: S.of(context).adPrefixText13),
                        MyTextFormField(
                            onChanged: (value) {
                              _description = value;
                            },
                            fontSize: 12,
                            maxLines: 13,
                            hintText: S.of(context).adHintText5),
                        MyLabelField(prefixText: S.of(context).adPrefixText14),
                        MyTextFormField(
                          hintText: S.of(context).adHintText6,
                          onChanged: (value) {
                            _cost = value;
                          },
                        ),
                        const SizedBox(height: 10),
                        AddingPhoto(
                          file: (value) {
                            _images.add(value);
                          },
                        ),
                        const SizedBox(height: 15),
                        SafeArea(
                          minimum: const EdgeInsets.only(bottom: 10),
                          child: Center(
                              child: MyButton(
                            text: S.of(context).adTextButton,
                          )),
                        ),
                      ],
                    );
            }),
      ),
    );
  }
}
