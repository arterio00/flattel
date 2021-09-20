import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddingPhoto extends StatefulWidget {
  const AddingPhoto({
    Key? key,
    required this.file,
  }) : super(key: key);
  final ValueChanged<File> file;

  @override
  _AddingPhotoState createState() => _AddingPhotoState();
}

class _AddingPhotoState extends State<AddingPhoto> {
  List<Widget> list = [];
  String _imagePath = '';
  final ImagePicker _imagePicker = ImagePicker();

  Future pickImage() async {
    try {
      final XFile? image =
          await _imagePicker.pickImage(source: ImageSource.gallery);
      if (image == null) return print('hghghhh');
      setState(() {
        _imagePath = image.path;
        File localImage = File(_imagePath);
        widget.file(localImage);
      });
    } on Platform catch (e) {
      print('Failed in a pick image $e');
    }
  }

  List<Widget> director() {
    Widget a = changed();
    if (list.length < 6) {
      list = [a, ...list];
    }
    return list;
  }

  Widget changed() {
    return InkWell(
      onTap: () {
        pickImage();
      },
      child: Container(
        width: 165,
        height: 100,
        decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: _imagePath == ''
            ? const Icon(Icons.add)
            : Image.file(
                File(_imagePath),
                fit: BoxFit.fitWidth,
              ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 15,
      spacing: 15,
      children: director(),
    );
  }
}
