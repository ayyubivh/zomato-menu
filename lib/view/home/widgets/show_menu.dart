import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils.dart';

showMenuPopup(
    TapDownDetails details, BuildContext context, Function(int value) onpress) {
  Offset offset = details.globalPosition;
  var index;
  showMenu(
      context: context,
      position: RelativeRect.fromLTRB(offset.dy, offset.dx, 80, offset.dy),
      items: [
        PopupMenuItem(
          child: Text(GlobalVariables.categories[0]),
          onTap: () {
            index = 0;
            print(index);
          },
        ),
        PopupMenuItem(
          child: Text(GlobalVariables.categories[1]),
          onTap: () {
            index = 1;
            print(index);
          },
        ),
        PopupMenuItem(
          child: Text(GlobalVariables.categories[2]),
          onTap: () {
            index = 2;
            print(index);
          },
        ),
        PopupMenuItem(
          child: Text(GlobalVariables.categories[3]),
          onTap: () {
            index = 3;
            print(index);
          },
        ),
        PopupMenuItem(
          child: Text(GlobalVariables.categories[4]),
          onTap: () {
            index = 4;
            print(index);
          },
        ),
        PopupMenuItem(
          child: Text(GlobalVariables.categories[5]),
          onTap: () {
            index = 5;
            print(index);
          },
        ),
        PopupMenuItem(
          child: Text(GlobalVariables.categories[6]),
          onTap: () {
            index = 6;
            print(index);
          },
        ),
        PopupMenuItem(
          child: Text(GlobalVariables.categories[7]),
          onTap: () {
            index = 7;
            print(index);
          },
        ),
        PopupMenuItem(
          child: Text(GlobalVariables.categories[8]),
          onTap: () {
            index = 8;
            print(index);
          },
        ),
      ]);
  return index;
}
