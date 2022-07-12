import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget buildCustomTab(
    {
    // required IconData icon,
    required String label,
    required bool isSelected,
    required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 0,
      vertical: 10,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        // Icon(icon),
        // const SizedBox(
        //   width: 10,
        // ),
        Text(
          label,
          textScaleFactor: Get.textScaleFactor,
          style: isSelected
              ? Theme.of(context).textTheme.button?.copyWith(
                    color: Theme.of(context).primaryColor,
                  )
              : Theme.of(context).textTheme.button?.copyWith(
                    color: Theme.of(context).disabledColor,
                  ),
        ),
      ],
    ),
  );
}
