// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'dart:async';

Timer? _timerConexao;

Future<void> verificarconexao() async {
  // Add your function code here!
  if (_timerConexao != null) return;

  bool? ultimoStatus;

  _timerConexao =
      Timer.periodic(const Duration(milliseconds: 500), (timer) async {
    try {
      bool conectado = await InternetConnectionCheckerPlus().hasConnection;

      // Só atualiza quando houver mudança (evita spam)
      if (conectado != ultimoStatus) {
        ultimoStatus = conectado;
        // Use update para garantir rebuild
        FFAppState().update(() {
          FFAppState().conectado = conectado;
        });
      }
    } catch (e) {
      // Se ocorrer erro na checagem, define como desconectado (ou trate como preferir)
      if (ultimoStatus != false) {
        ultimoStatus = false;
        FFAppState().update(() {
          FFAppState().conectado = false;
        });
      }
    }
  });
}
