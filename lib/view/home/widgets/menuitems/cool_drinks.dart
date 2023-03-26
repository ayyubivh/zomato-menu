import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils.dart';

class CoolDrinks extends StatelessWidget {
  const CoolDrinks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: GlobalVariables.cooldrinks.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "${GlobalVariables.cooldrinks[index]['name']}",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "${GlobalVariables.cooldrinks[index]['price']}",
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 110,
                    child: Stack(
                      children: [
                        CachedNetworkImage(
                          imageUrl: GlobalVariables.cooldrinks[index]['img']!,
                          imageBuilder: (context, imageProvider) => Container(
                            height: 100,
                            width: 110,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10,
                          right: 10,
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: GlobalVariables.primaryColors),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            height: 33,
                            width: 85,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Center(
                                  child: Text(
                                    'ADD',
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: GlobalVariables.primaryColors,
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 8.0),
                                  child: Icon(
                                    Icons.add,
                                    size: 18,
                                    color: GlobalVariables.primaryColors,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
