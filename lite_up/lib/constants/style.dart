// This file contains customization for colors and fonts.
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/* TEXT STYLE */
const TextStyle appBarTitle =
    TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold);
const TextStyle levelTitle = TextStyle(color: Colors.black, fontSize: 20);
const TextStyle unlockedLevelCardTitle =
    TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold);
const TextStyle lockedLevelCardTitle =
    TextStyle(color: softOrange, fontSize: 24, fontWeight: FontWeight.bold);

const TextStyle flashcardContentStyle =
    TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold);

const TextStyle flashcardPageStyle =
    TextStyle(color: deepOrange, fontSize: 20, fontWeight: FontWeight.bold);

const TextStyle loginButtonTextStyle =
    TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold);
const TextStyle signUpButtonTextStyle =
    TextStyle(color: deepOrange, fontSize: 16, fontWeight: FontWeight.bold);
const TextStyle endButtonTextStyle =
    TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold);

const TextStyle personalisationTextstyle =
    TextStyle(color: grayish, fontSize: 13, fontWeight: FontWeight.w500);

/* COLOR STYLE */
const Color background = Color.fromARGB(255, 249, 240, 181);
const Color deepOrange = Color.fromARGB(255, 255, 123, 46);
const Color softOrange = Color.fromARGB(255, 254, 189, 142);
const Color deepYellow = Color.fromARGB(255, 255, 187, 1);
const Color skyBlue = Color.fromARGB(255, 156, 197, 231);
const Color white = Colors.white;
const Color grayish = Color.fromARGB(255, 87, 87, 87);
const Color lightGray = Color.fromARGB(255, 217, 217, 217);
const Color red = Color.fromARGB(255, 255, 140, 140);

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

var mapNumberToLetter = {1: 'a', 2: 'b', 3: 'c'};
