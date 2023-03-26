import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils.dart';
import 'package:food_delivery_app/view/home/widgets/menuitems/burger_item.dart';
import 'package:food_delivery_app/view/home/widgets/menuitems/cool_drinks.dart';
import 'package:food_delivery_app/view/home/widgets/menuitems/deserts_item.dart';
import 'package:food_delivery_app/view/home/widgets/menuitems/grills_item.dart';
import 'package:food_delivery_app/view/home/widgets/menuitems/main_course_items.dart';
import 'package:food_delivery_app/view/home/widgets/menuitems/salad_item.dart';
import 'package:food_delivery_app/view/home/widgets/menuitems/shakes_item.dart';
import 'package:food_delivery_app/view/home/widgets/show_menu.dart';

import 'menuitems/biriyani.dart';
import 'menuitems/starters.dart';

class MenuTabBar extends StatefulWidget {
  const MenuTabBar({Key? key}) : super(key: key);
  @override
  State<MenuTabBar> createState() => _MenuTabBarState();
}

class _MenuTabBarState extends State<MenuTabBar> {
  final List<Step> _steps = getSteps();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: _renderSteps(),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
        onTapDown: (details) => showMenyPopup(details, context),
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

  Widget _renderSteps() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _steps[index].isExpanded = !isExpanded;
        });
      },
      children: _steps.map<ExpansionPanel>((Step step) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(step.title),
            );
          },
          body: step.body,
          isExpanded: step.isExpanded,
        );
      }).toList(),
    );
  }
}

class Step {
  Step({required this.title, required this.body, this.isExpanded = false});
  String title;
  Widget body;
  bool isExpanded;
}

List<Step> getSteps() {
  return [
    Step(
      title: "${GlobalVariables.categories[0]}",
      body: const StartesItems(),
    ),
    Step(
        title: "${GlobalVariables.categories[1]}",
        body: const MainCourseItem()),
    Step(
      title: "${GlobalVariables.categories[2]}",
      body: const BiriyaniItems(),
    ),
    Step(
      title: "${GlobalVariables.categories[3]}",
      body: const BurgerItem(),
    ),
    Step(
      title: "${GlobalVariables.categories[4]}",
      body: const GrillItem(),
    ),
    Step(
      title: "${GlobalVariables.categories[5]}",
      body: const SaladItem(),
    ),
    Step(
      title: "${GlobalVariables.categories[6]}",
      body: const ShakesItem(),
    ),
    Step(
      title: "${GlobalVariables.categories[7]}",
      body: const DesertsItem(),
    ),
    Step(
      title: "${GlobalVariables.categories[8]}",
      body: const CoolDrinks(),
    ),
  ];
}
