import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'te3ste_widget.dart' show Te3steWidget;
import 'package:flutter/material.dart';

class Te3steModel extends FlutterFlowModel<Te3steWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in te3ste widget.
  List<CanteirosRow>? teste;
  Stream<List<CanteirosRow>>? columnSupabaseStream;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
