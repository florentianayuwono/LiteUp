// This file contains customization for colors and fonts.
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/* TEXT STYLE */
const TextStyle appBarTitle =
    TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold);
const TextStyle levelTitle = TextStyle(color: Colors.black, fontSize: 20);
const TextStyle levelCardTitle =
    TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold);
const TextStyle loginButtonTextStyle =
    TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold);
const TextStyle signUpButtonTextStyle =
    TextStyle(color: deepOrange, fontSize: 16, fontWeight: FontWeight.bold);

/* COLOR STYLE */
const Color background = Color.fromARGB(255, 249, 240, 181);
const Color deepOrange = Color.fromARGB(255, 255, 123, 46);
const Color softOrange = Color.fromARGB(255, 254, 189, 142);
const Color deepYellow = Color.fromARGB(255, 255, 187, 1);
const Color skyBlue = Color.fromARGB(255, 156, 197, 231);
const Color white = Colors.white;

ButtonStyle loginButtonStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(deepOrange),
    padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(horizontal: 35, vertical: 30)),
    shape: MaterialStateProperty.all(const StadiumBorder()));

/* BACKGROUND STYLE */
const BoxDecoration primaryBackground = BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [white, background]));

BoxDecoration unlockedCardBackground =
    BoxDecoration(color: softOrange, borderRadius: BorderRadius.circular(25));
