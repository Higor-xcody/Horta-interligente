import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';

double? multiplicar(
  double a,
  double b,
) {
  return a * b;
}

String formatarData(DateTime data) {
  List meses = [
    '',
    'janeiro',
    'fevereiro',
    'março',
    'abril',
    'maio',
    'junho',
    'julho',
    'agosto',
    'setembro',
    'outubro',
    'novembro',
    'dezembro'
  ];

  return '${data.day} de ${meses[data.month]}';
}

bool estaNosProximos7Dias(DateTime data) {
  final agora = DateTime.now();
  final limite = agora.add(Duration(days: 7));

  return data.isAfter(agora) && data.isBefore(limite);
}

String diasNoFuturo(DateTime data) {
  final hoje = DateTime.now();

  final hojeSemHora = DateTime(hoje.year, hoje.month, hoje.day);
  final dataSemHora = DateTime(data.year, data.month, data.day);

  final diferenca = dataSemHora.difference(hojeSemHora).inDays;

  if (diferenca <= 0) {
    return "0 dias";
  }

  return "$diferenca dias";
}
