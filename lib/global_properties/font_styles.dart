library Soulforger.net.fonts;
import 'package:flutter/material.dart';

TextStyle h1({Color color = const Color(0xFFCACECA)}){
  return TextStyle(
    fontFamily: 'Roboto',
    fontSize: 48,
    fontWeight: FontWeight.w900,
    color: color
  );
}

TextStyle h2({Color color = const Color(0xFFCACECA)}){
  return TextStyle(
    fontFamily: 'Roboto',
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: color
  );
}

TextStyle h3({Color color = const Color(0xFFCACECA)}){
  return TextStyle(
    fontFamily: 'Roboto',
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: color
  );
}

TextStyle body({Color color = const Color(0xFFCACECA)}){
  return TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: color
  );
}

TextStyle bodyBold({Color color = const Color(0xFFCACECA)}){
  return TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: color
  );
}