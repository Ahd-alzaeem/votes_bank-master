import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SelectColorWidget extends StatefulWidget {
  const SelectColorWidget({super.key});

  @override
  State<SelectColorWidget> createState() => _SelectColorWidgetState();
}

class _SelectColorWidgetState extends State<SelectColorWidget> {
  final List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
  ];
  Color selectedColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DropdownButton<Color>(
          value: selectedColor,
          icon: SvgPicture.asset("assets/icons/Vector (2).svg"),
          // padding: const EdgeInsets.symmetric(horizontal: 5),
          iconSize: 24,
          elevation: 16,
          underline: Container(),

          onChanged: (Color? newValue) {
            if (newValue != null) {
              setState(() {
                selectedColor = newValue;
              });
            }
          },
          items: colors.map<DropdownMenuItem<Color>>((Color value) {
            return DropdownMenuItem<Color>(
              value: value,
              child: Container(
                margin: const EdgeInsets.only(left: 10),
                width: Get.width * .75,
                height: 22,
                decoration: BoxDecoration(
                  color: value,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            );
          }).toList(),
        ),
        // Expanded(
        //   child: Container(
        //     height: 22,
        //     decoration: BoxDecoration(
        //       color: Colors.white,
        //       borderRadius: BorderRadius.circular(8),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
