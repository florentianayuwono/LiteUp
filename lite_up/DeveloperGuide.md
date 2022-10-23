# Developer Guide

## Getting Started
Recommends going through this [video](https://www.youtube.com/watch?v=4jBxPyMLeVs&list=PLowRfKz1qoIII96X_sz7KyXoD9tgnDIyv&index=6), as it is the main reference for the project structure and has comprehensive step-by-step tutorial on how to build the project with similar tech stack and componenents from scratch.

## Project Structure and Layout
The main repository of this project, [lite_up](), contains all the code and dependencies for building the [LiteUp mobile application]().

Inside [lite_up](), there are:
1. [lib](), contains the code used to create the application. Most of the times, we will just play inside here.
2. Several other dependencies and test files. Do not tamper with these unless needed.

Inside [lib](), there are:
1. [constants](), contains list of files that govern the fonts and colors customization as well as static texts (content of flashcards, etc.). This folder is important for Designers and Content Creators.
2. [models](), contains the custom OOP class of level, flashcard, book, etc.
3. [screens](), contains screens that will display our application.
4. [widgets](), contains all the custom components that will be displayed inside screen.
5. [main.dart](), main entry point of the application, renders the screen.