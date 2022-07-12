import 'package:cucumia_admin/app/modules/products/matser_list/controllers/matser_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/flutter_dashboard.dart';

class CustomMaterialButton2 extends StatelessWidget {
  const CustomMaterialButton2({
    Key? key,
    required this.controller,
    required this.screen,
    required this.text,
    required this.onPressed,
    // required this.screen,
  }) : super(key: key);

  final MatserListController controller;
  final ResponsiveScreen screen;
  final String text;
  final VoidCallback? onPressed;
  // final ResponsiveScreen screen;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide(
          color: Theme.of(screen.context).primaryColor,
        ),
      ),
      height: 46,
      minWidth: 120,
      child: Text(
        text,
        textScaleFactor: Get.textScaleFactor,
        style: DefaultTextStyle.of(screen.context).style,
      ),
    );
  }
}
