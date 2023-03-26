import 'package:flutter/material.dart';

class GlobalVariables {
  static const primaryColors = Colors.red;
  static const List categories = [
    "Starters",
    "Main Course",
    "Biriyani",
    "Burgers",
    "Grills",
    "Salads",
    "Shakes",
    "Deserts",
    "cool Drinks",
  ];

  static const List<Map<String, String>> starters = [
    {
      "name": "Chicken Fingers",
      "price": "269",
      "img":
          "https://images.unsplash.com/photo-1600555379765-f82335a7b1b0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y2hpY2tlbiUyMGZyeXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1000&q=60",
    },
    {
      "name": "Chickern Lollipop",
      "price": "289",
      "img":
          "https://images.unsplash.com/photo-1610057099431-d73a1c9d2f2f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    },
    {
      "name": "Chicker Nuggets",
      "price": "220",
      "img":
          "https://images.unsplash.com/photo-1623653387945-2fd25214f8fc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    },
  ];
  static const List mainCourse = [
    {
      "name": "Chicken Tikka",
      "price": "399",
      "img":
          "https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    },
    {
      "name": "Pepper Chicken",
      "price": "299",
      "img":
          "https://plus.unsplash.com/premium_photo-1669557208969-737d6ab1c9fd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGNoaWNrZW4lMjBmb29kc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1000&q=60",
    },
    {
      "name": "Butter Chicken",
      "price": "279",
      "img":
          "https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YnV0dGVyJTIwY2hpY2tlbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1000&q=60",
    },
  ];
  static const List biriyani = [
    {
      "name": "Chicken Dum Biriayani",
      "price": "249",
      "img":
          "https://t4.ftcdn.net/jpg/04/36/36/57/240_F_436365754_z3i5Es0sFmZuLY6GZIzdiU01v9HqpGZe.jpg",
    },
    {
      "name": "Afghani Chicken Biriayani",
      "price": "299",
      "img":
          "https://t3.ftcdn.net/jpg/04/41/20/18/240_F_441201852_XQqp1wbAQj9udOC3iT7D0ahKgaf71bns.jpg",
    },
    {
      "name": "Thalapakkitty Biriyani",
      "price": "289 ",
      "img":
          "https://t3.ftcdn.net/jpg/00/90/99/00/240_F_90990026_TOpYSnzbQj9umMIYuEINsvwd64GhcVUv.jpg",
    },
  ];
  static const List burger = [
    {
      "name": "Chicken Burger",
      "price": "220",
      "img":
          "https://images.unsplash.com/photo-1603064752734-4c48eff53d05?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
    },
    {
      "name": "Beef Burger",
      "price": "249",
      "img":
          "https://images.unsplash.com/photo-1607013251379-e6eecfffe234?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGJ1cmdlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60",
    },
    {
      "name": "Zinger Burger",
      "price": "279",
      "img":
          "https://images.unsplash.com/photo-1608142014114-3099960b7e41?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTEzfHxidXJnZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60",
    },
  ];
  static const List grills = [
    {
      "name": "BBQ Chicken",
      "price": "189",
      "img":
          "https://images.unsplash.com/photo-1611354609291-69aba96e45df?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Z3JpbGxzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
    },
    {
      "name": "Chicken Kebab",
      "price": "320",
      "img":
          "https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z3JpbGxlZCUyMGNoaWNrZW58ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60",
    },
    {
      "name": "Al Faham",
      "price": "179",
      "img":
          "https://thumbs.dreamstime.com/b/juicy-grilled-chicken-breast-mayonnaise-salad-al-faham-arabian-dish-juicy-grilled-chicken-breast-mayonnaise-186409215.jpg",
    },
  ];
  static const List salads = [
    {
      "name": "Veg Salad",
      "price": "149",
      "img":
          "https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2FsYWR8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60",
    },
    {
      "name": "Fruit Salad",
      "price": "179",
      "img":
          "https://images.unsplash.com/photo-1505576633757-0ac1084af824?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHNhbGFkfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
    },
    {
      "name": "Italian Salad",
      "price": "219",
      "img":
          "https://images.unsplash.com/photo-1623428187969-5da2dcea5ebf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHNhbGFkfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
    },
  ];
  static const List shakes = [
    {
      "name": "Oreo Sahke",
      "price": "99",
      "img":
          "https://images.unsplash.com/photo-1572490122747-3968b75cc699?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2hha2VzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
    },
    {
      "name": "Vanila Shake",
      "price": "89",
      "img":
          "https://images.unsplash.com/photo-1472555794301-77353b152fb7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHNoYWtlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60",
    },
    {
      "name": "Mango Shake",
      "price": "89",
      "img":
          "https://images.unsplash.com/photo-1623065422902-30a2d299bbe4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8c2hha2VzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
    },
  ];
  static const List deserts = [
    {
      "name": "Choco Brownie",
      "price": "69",
      "img":
          "https://images.unsplash.com/photo-1629273547117-f459fcc8a577?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGRlc2VydHMlMjBmb29kfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
    },
    {
      "name": "Donuts",
      "price": "49",
      "img":
          "https://images.unsplash.com/photo-1527515545081-5db817172677?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fGRlc2VydHMlMjBmb29kfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
    },
    {
      "name": "Fruit Pancake",
      "price": "99",
      "img":
          "https://images.unsplash.com/photo-1541491008689-b5d3c6615e2e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTF8fGRlc2VydHMlMjBmb29kfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
    },
  ];
  static const List cooldrinks = [
    {
      "name": "Mint Lime",
      "price": "40",
      "img":
          "https://images.unsplash.com/photo-1575596510825-f748919a2bf7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGNvb2wlMjBkcmlua3N8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60",
    },
    {
      "name": "Orange Juice",
      "price": "70",
      "img":
          "https://images.unsplash.com/photo-1603803721487-97009eb7f8db?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fGNvb2wlMjBkcmlua3N8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60",
    },
    {
      "name": "Mint Mojito",
      "price": "90",
      "img":
          "https://images.unsplash.com/photo-1541591425126-4e6dcf84b386?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGNvb2wlMjBkcmlua3N8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60",
    },
  ];
}
