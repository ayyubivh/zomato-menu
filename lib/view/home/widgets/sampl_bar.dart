import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils.dart';
import 'package:food_delivery_app/view/home/widgets/menuitems/biriyani.dart';
import 'package:food_delivery_app/view/home/widgets/menuitems/burger_item.dart';
import 'package:food_delivery_app/view/home/widgets/menuitems/cool_drinks.dart';
import 'package:food_delivery_app/view/home/widgets/menuitems/deserts_item.dart';
import 'package:food_delivery_app/view/home/widgets/menuitems/main_course_items.dart';
import 'package:food_delivery_app/view/home/widgets/menuitems/salad_item.dart';
import 'package:food_delivery_app/view/home/widgets/menuitems/shakes_item.dart';
import 'package:food_delivery_app/view/home/widgets/menuitems/starters.dart';

import 'menuitems/grills_item.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  MenuScreenState createState() => MenuScreenState();
}

class MenuScreenState extends State<MenuScreen> {
  @override
  void initState() {
    super.initState();
    for (int i = 0; i <= 8; i++) {
      isEnabled.add(false);
    }
  }

  List<bool> isEnabled = [];

  void onPressed(
    TapDownDetails details,
    BuildContext context,
  ) async {
    Offset offset = details.globalPosition;

    await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(offset.dx, offset.dy, 0, 0),
      items: [
        PopupMenuItem(
          child: const Text("Starters"),
          onTap: () {
            if (isEnabled[0]) {
              setState(() {
                isEnabled[0] = false;
              });
            } else {
              setState(() {
                isEnabled[0] = true;
              });
            }
          },
        ),
        PopupMenuItem(
          child: const Text("MainCourse"),
          onTap: () {
            if (isEnabled[1]) {
              setState(() {
                isEnabled[1] = false;
              });
            } else {
              setState(() {
                isEnabled[1] = true;
              });
            }
          },
        ),
        PopupMenuItem(
          child: const Text("Biriyani"),
          onTap: () {
            if (isEnabled[2]) {
              setState(() {
                isEnabled[2] = false;
              });
            } else {
              setState(() {
                isEnabled[2] = true;
              });
            }
          },
        ),
        PopupMenuItem(
          child: const Text("Burgers"),
          onTap: () {
            if (isEnabled[3]) {
              setState(() {
                isEnabled[3] = false;
              });
            } else {
              setState(() {
                isEnabled[3] = true;
              });
            }
          },
        ),
        PopupMenuItem(
          child: const Text("Grills"),
          onTap: () {
            if (isEnabled[4]) {
              setState(() {
                isEnabled[4] = false;
              });
            } else {
              setState(() {
                isEnabled[4] = true;
              });
            }
          },
        ),
        PopupMenuItem(
          child: const Text("Salads"),
          onTap: () {
            if (isEnabled[5]) {
              setState(() {
                isEnabled[5] = false;
              });
            } else {
              setState(() {
                isEnabled[5] = true;
              });
            }
          },
        ),
        PopupMenuItem(
          child: const Text("Shakes"),
          onTap: () {
            if (isEnabled[6]) {
              setState(() {
                isEnabled[6] = false;
              });
            } else {
              setState(() {
                isEnabled[6] = true;
              });
            }
          },
        ),
        PopupMenuItem(
          child: const Text("Deserts"),
          onTap: () {
            if (isEnabled[7]) {
              setState(() {
                isEnabled[7] = false;
              });
            } else {
              setState(() {
                isEnabled[7] = true;
              });
            }
          },
        ),
        PopupMenuItem(
          child: const Text("Cool Drinks"),
          onTap: () {
            if (isEnabled[8]) {
              setState(() {
                isEnabled[8] = false;
              });
            } else {
              setState(() {
                isEnabled[8] = true;
              });
            }
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final kHeight = SizedBox(
      height: size.height / 45,
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[200],
          child: Column(
            children: [
              kHeight,
              menuTitle(size, 1, "Starters", 0),
              isEnabled[0] ? const StartesItems() : kHeight,
              menuTitle(size, 12, "MainCourse", 1),
              isEnabled[1] ? const MainCourseItem() : kHeight,
              menuTitle(size, 5, "Biriyani", 2),
              isEnabled[2] ? const BiriyaniItems() : kHeight,
              menuTitle(size, 4, "Burgers", 3),
              isEnabled[3] ? const BurgerItem() : kHeight,
              menuTitle(size, 5, "Grills", 4),
              isEnabled[4] ? const GrillItem() : kHeight,
              menuTitle(size, 23, "Salads", 5),
              isEnabled[5] ? const SaladItem() : kHeight,
              menuTitle(size, 23, "Shakes", 6),
              isEnabled[6] ? const ShakesItem() : kHeight,
              menuTitle(size, 23, "Deserts", 7),
              isEnabled[7] ? const DesertsItem() : kHeight,
              menuTitle(size, 23, "Cool Drinks", 8),
              isEnabled[8] ? const CoolDrinks() : kHeight,
              kHeight,
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GestureDetector(
        onTapDown: (details) => onPressed(details, context),
        child: Container(
          height: size.height / 18,
          width: size.width / 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: GlobalVariables.primaryColors,
          ),
          child: Row(
            children: const [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(1.0),
                child: Text(
                  "Menu",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget menuTitle(Size size, int items, String title, int index) {
    return GestureDetector(
      onTap: () {
        if (isEnabled[index]) {
          setState(() {
            isEnabled[index] = false;
          });
        } else {
          setState(() {
            isEnabled[index] = true;
          });
        }
      },
      child: Container(
        height: size.height / 14,
        width: size.width,
        decoration: const BoxDecoration(
          color: Colors.white,
          // border: Border.symmetric(
          //   horizontal: BorderSide(color: Colors.grey, width: 0.5),
          // ),
        ),
        child: Row(
          children: [
            Container(
              width: 6,
              height: 20,
              color: GlobalVariables.primaryColors,
            ),
            SizedBox(
              height: size.height / 10,
              width: size.width / 1.2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: size.width / 1.3,
                    child: Text(
                      '$title ($items)',
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: size.height / 10,
              width: size.width / 8,
              alignment: Alignment.centerRight,
              child: const Icon(
                Icons.arrow_drop_down,
                size: 25,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OffersData {
  String title, subtitle;
  Color color;
  OffersData(
      {required this.color, required this.subtitle, required this.title});
}
