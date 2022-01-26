import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

///갤러리에서 이미지 선택///
pickImage(ImageSource source) async {
  final ImagePicker _imagePicker = ImagePicker();

  XFile? _file = await _imagePicker.pickImage(source: source);

  if (_file != null) {
    return await _file.readAsBytes();
  }
  print('No Image Selected!');
}

///스낵바 보여주기(토스트)///
showSnackBar(String content, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
    ),
  );
}
