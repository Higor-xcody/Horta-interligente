import '/flutter_flow/flutter_flow_util.dart';
import 'tt_widget.dart' show TtWidget;
import 'package:flutter/material.dart';

class TtModel extends FlutterFlowModel<TtWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Input widget.
  FocusNode? inputFocusNode;
  TextEditingController? inputTextController;
  late bool inputVisibility;
  String? Function(BuildContext, String?)? inputTextControllerValidator;

  @override
  void initState(BuildContext context) {
    inputVisibility = false;
  }

  @override
  void dispose() {
    inputFocusNode?.dispose();
    inputTextController?.dispose();
  }
}
