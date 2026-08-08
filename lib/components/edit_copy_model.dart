import '/components/text_field2_copy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_copy_widget.dart' show EditCopyWidget;
import 'package:flutter/material.dart';

class EditCopyModel extends FlutterFlowModel<EditCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for TextField2Copy component.
  late TextField2CopyModel textField2CopyModel;

  @override
  void initState(BuildContext context) {
    textField2CopyModel = createModel(context, () => TextField2CopyModel());
  }

  @override
  void dispose() {
    textField2CopyModel.dispose();
  }
}
