
import 'package:ecommerce_app/View/HomePage.dart';
import 'package:ecommerce_app/View/ListPage.dart';
import 'package:ecommerce_app/View/ProductPage.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context) => home(),
      '/product':(context) => product(),
      '/last':(context) => lastscreen(),
    },
  ));
}
