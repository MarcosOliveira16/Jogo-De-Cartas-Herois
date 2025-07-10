import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

double newCustomFunction(
  double forca,
  double velocidade,
  double inteligencia,
  double combate,
) {
  return ((forca + velocidade + inteligencia + combate) / 4);
}

double newCustomFunction2(
  String forca,
  String velocidade,
  String inteligencia,
  String combate,
) {
  final f = double.parse(forca == "null" ? "0" : forca);
  final v = double.parse(velocidade == "null" ? "0" : velocidade);
  final i = double.parse(inteligencia == "null" ? "0" : inteligencia);
  final c = double.parse(combate == "null" ? "0" : combate);

  return (f + v + i + c) / 4;
}
