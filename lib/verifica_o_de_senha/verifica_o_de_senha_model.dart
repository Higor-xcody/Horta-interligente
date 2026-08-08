import '/backend/supabase/supabase.dart';
import '/components/tt_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import '/index.dart';
import 'verifica_o_de_senha_widget.dart' show VerificaODeSenhaWidget;
import 'package:flutter/material.dart';

class VerificaODeSenhaModel extends FlutterFlowModel<VerificaODeSenhaWidget> {
  ///  Local state fields for this page.

  bool erro = false;

  ///  State fields for stateful widgets in this page.

  Stream<List<SenhaRow>>? verificaODeSenhaSupabaseStream;
  // Model for tt component.
  late TtModel ttModel;

  @override
  void initState(BuildContext context) {
    ttModel = createModel(context, () => TtModel());
  }

  @override
  void dispose() {
    ttModel.dispose();
  }
}
