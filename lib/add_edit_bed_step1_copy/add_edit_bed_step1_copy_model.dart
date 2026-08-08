import '/components/section_header_widget.dart';
import '/components/step_indicator_widget.dart';
import '/components/text_field2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_edit_bed_step1_copy_widget.dart' show AddEditBedStep1CopyWidget;
import 'package:flutter/material.dart';

class AddEditBedStep1CopyModel
    extends FlutterFlowModel<AddEditBedStep1CopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for StepIndicator.
  late StepIndicatorModel stepIndicatorModel1;
  // Model for StepIndicator.
  late StepIndicatorModel stepIndicatorModel2;
  // Model for StepIndicator.
  late StepIndicatorModel stepIndicatorModel3;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel;
  // Model for TextField.
  late TextField2Model textFieldModel1;
  // Model for TextField.
  late TextField2Model textFieldModel2;
  // Model for TextField.
  late TextField2Model textFieldModel3;
  // Model for TextField.
  late TextField2Model textFieldModel4;

  @override
  void initState(BuildContext context) {
    stepIndicatorModel1 = createModel(context, () => StepIndicatorModel());
    stepIndicatorModel2 = createModel(context, () => StepIndicatorModel());
    stepIndicatorModel3 = createModel(context, () => StepIndicatorModel());
    sectionHeaderModel = createModel(context, () => SectionHeaderModel());
    textFieldModel1 = createModel(context, () => TextField2Model());
    textFieldModel2 = createModel(context, () => TextField2Model());
    textFieldModel3 = createModel(context, () => TextField2Model());
    textFieldModel4 = createModel(context, () => TextField2Model());
  }

  @override
  void dispose() {
    stepIndicatorModel1.dispose();
    stepIndicatorModel2.dispose();
    stepIndicatorModel3.dispose();
    sectionHeaderModel.dispose();
    textFieldModel1.dispose();
    textFieldModel2.dispose();
    textFieldModel3.dispose();
    textFieldModel4.dispose();
  }
}
