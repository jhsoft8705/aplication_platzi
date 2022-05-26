import 'package:flutter/material.dart';
import 'gradient_back.dart';
import 'car_image_list.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Stack(
      children: [
        GradientBack("The Factory of Jh soft"),
        const CardImageList()
      ],
    );
  }
}
