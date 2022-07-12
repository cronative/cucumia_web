import 'package:cached_network_image/cached_network_image.dart';
import 'package:cucumia_admin/app/widgets/components/form_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';

class LabeledTextField extends StatelessWidget {
  final String label;
  final FormTextInputField textfield;

  const LabeledTextField({
    Key? key,
    required this.label,
    required this.textfield,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          height: 10,
        ),
        textfield,
      ],
    );
  }
}
