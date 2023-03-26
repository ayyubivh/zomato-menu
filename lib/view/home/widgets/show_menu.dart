import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils.dart';

showMenyPopup(TapDownDetails details, BuildContext context) async {
  Offset offset = details.globalPosition;
  showMenu(
      context: context,
      position: RelativeRect.fromLTRB(offset.dy, offset.dx, 80, offset.dy),
      items: [
        PopupMenuItem(child: Text(GlobalVariables.categories[0])),
        PopupMenuItem(child: Text(GlobalVariables.categories[1])),
        PopupMenuItem(child: Text(GlobalVariables.categories[2])),
        PopupMenuItem(child: Text(GlobalVariables.categories[3])),
        PopupMenuItem(child: Text(GlobalVariables.categories[4])),
        PopupMenuItem(child: Text(GlobalVariables.categories[5])),
        PopupMenuItem(child: Text(GlobalVariables.categories[6])),
        PopupMenuItem(child: Text(GlobalVariables.categories[7])),
        PopupMenuItem(child: Text(GlobalVariables.categories[8])),
      ]);
}
