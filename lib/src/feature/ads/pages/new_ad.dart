import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../ads_bloc/ads_bloc.dart';
import '../entities/ad.dart';
import '/src/widgets/my_button.dart';
import '/src/widgets/new_ad/adding_photo.dart';
import '/src/widgets/new_ad/my_dropmenu.dart';
import '/src/widgets/new_ad/my_label_field.dart';
import '/src/widgets/new_ad/my_text_form.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '/generated/l10n.dart';

class NewAd extends StatefulWidget {
  const NewAd({Key? key}) : super(key: key);

  @override
  _NewAdState createState() => _NewAdState();
}

class _NewAdState extends State<NewAd> {
  final _formKey = GlobalKey<FormState>();
  List<File> _images = [];
  late final TextEditingController _streetController = TextEditingController();
  late final TextEditingController _totalFloorAreaController =
      TextEditingController();
  late final TextEditingController _commissionToAgentController =
      TextEditingController();
  late final TextEditingController _kitchenFloorAreaController =
      TextEditingController();
  late final TextEditingController _descriptionController =
      TextEditingController();
  late final TextEditingController _costController = TextEditingController();
  late String _apartmentComplex;
  late String _assignment;
  late String _numberOfRooms;
  late String _apartmentLayout;
  late String _condition;
  late String _terrace;
  late String _typeOfHeating;
  late String _calculationOptions;
  late String _communicationMethod;

  @override
  void dispose() {
    _streetController.dispose();
    _totalFloorAreaController.dispose();
    _kitchenFloorAreaController.dispose();
    _commissionToAgentController.dispose();
    _descriptionController.dispose();
    _costController.dispose();
    super.dispose();
  }

  bool validation() {
    return _formKey.currentState?.validate() ?? false;
  }

  void onPressed() {
    final store = context.read<AdsBloc>();
    final ad = Ad(
      urlImages: null,
      kitchenFloorArea: _kitchenFloorAreaController.text,
      street: _streetController.text,
      totalFloorArea: _totalFloorAreaController.text,
      cost: _costController.text,
      commissionToAgent: _commissionToAgentController.text,
      description: _descriptionController.text,
      apartmentComplex: _apartmentComplex,
      assignment: _assignment,
      numberOfRooms: _numberOfRooms,
      apartmentLayout: _apartmentLayout,
      condition: _condition,
      terrace: _terrace,
      typeOfHeating: _typeOfHeating,
      calculationOptions: _calculationOptions,
      communicationMethod: _communicationMethod,
    );
    store.add(AdsEvent.sendAd(ad, _images));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF5F5F5),
        elevation: 0.0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/home_icon/chevron-down.svg'),
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
              icon: SvgPicture.asset('assets/home_icon/x-circle.svg')),
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
                  : Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      key: _formKey,
                      child: ListView(
                        //  physics: const ClampingScrollPhysics(),
                        children: [
                          MyLabelField(
                            prefixText: S.of(context).adPrefixText1,
                            suffixText: S.of(context).adSuffixText1,
                            suffixIcon:
                                SvgPicture.asset('assets/home_icon/map.svg'),
                          ),
                          MyTextFormField(
                            validation: (value) =>
                                value == null ? S.of(context).emptyField : null,
                            controller: _streetController,
                            hintText: S.of(context).adHintText1,
                          ),
                          MyLabelField(
                            prefixText: S.of(context).adPrefixText2,
                            suffixText: S.of(context).adSuffixText2,
                            suffixIcon:
                                SvgPicture.asset('assets/home_icon/grid.svg'),
                          ),
                          MyDropMenu(
                            testList: dataSnapshot.data!.get('жк'),
                            value: (String value) {
                              _apartmentComplex = value;
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
                            testList:
                                dataSnapshot.data!.get('количество комнат'),
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
                            validation: (value) =>
                                value == null ? S.of(context).emptyField : null,
                            hintText: S.of(context).adHintText2,
                            controller: _totalFloorAreaController,
                          ),
                          const MyLabelField(prefixText: 'Площадь кухни'),
                          MyTextFormField(
                            validation: (value) =>
                                value == null ? S.of(context).emptyField : null,
                            hintText: S.of(context).adHintText3,
                            controller: _kitchenFloorAreaController,
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
                          MyLabelField(
                              prefixText: S.of(context).adPrefixText10),
                          MyDropMenu(
                            testList:
                                dataSnapshot.data!.get('варианты расчета'),
                            value: (String value) {
                              _calculationOptions = value;
                            },
                          ),
                          MyLabelField(
                              prefixText: S.of(context).adPrefixText11),
                          MyTextFormField(
                            validation: (value) =>
                                value == null ? S.of(context).emptyField : null,
                            hintText: S.of(context).adHintText4,
                            controller: _commissionToAgentController,
                          ),
                          MyLabelField(
                              prefixText: S.of(context).adPrefixText12),
                          MyDropMenu(
                            testList: dataSnapshot.data!.get('способ связи'),
                            value: (String value) {
                              _communicationMethod = value;
                            },
                          ),
                          MyLabelField(
                              prefixText: S.of(context).adPrefixText13),
                          MyTextFormField(
                              validation: (value) => value == null
                                  ? S.of(context).emptyField
                                  : null,
                              controller: _descriptionController,
                              fontSize: 12,
                              maxLines: 13,
                              hintText: S.of(context).adHintText5),
                          MyLabelField(
                              prefixText: S.of(context).adPrefixText14),
                          MyTextFormField(
                            validation: (value) =>
                                value == null ? S.of(context).emptyField : null,
                            hintText: S.of(context).adHintText6,
                            controller: _costController,
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
                              onPressed: validation() ? onPressed : () {},
                              text: S.of(context).adTextButton,
                            )),
                          ),
                        ],
                      ),
                    );
            }),
      ),
    );
  }
}
