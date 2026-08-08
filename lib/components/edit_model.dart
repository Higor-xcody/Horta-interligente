import '/components/text_field2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_widget.dart' show EditWidget;
import 'package:flutter/material.dart';

class EditModel extends FlutterFlowModel<EditWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for TextField2 component.
  late TextField2Model textField2Model;

  @override
  void initState(BuildContext context) {
    textField2Model = createModel(context, () => TextField2Model());
  }

  @override
  void dispose() {
    textField2Model.dispose();
  }
}
