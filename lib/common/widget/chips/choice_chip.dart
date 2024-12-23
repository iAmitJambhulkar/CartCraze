import 'package:cartcraze/common/widget/custom_shapes/container/circular_container.dart';
import 'package:cartcraze/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/color.dart';

class cartChoiceChip extends StatelessWidget {
  const cartChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {

    final isColor = cartHelperFunctions.getColor(text) != null ;

    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? cartColor.white :  null ),
        avatar: isColor
            ? cartCircularContainer(width: 50,height: 50,backgroundColor: cartHelperFunctions.getColor(text)!)
            : null ,
        shape: isColor ? const CircleBorder() : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
        backgroundColor: isColor ? cartHelperFunctions.getColor(text)! : null,
      ),
    );
  }
}

