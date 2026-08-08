import '/components/section_header2_widget.dart';
import '/components/section_header_widget.dart';
import '/components/step_indicator_widget.dart';
import '/components/text_field2_copy_widget.dart';
import '/components/text_field2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_edit_bed_step1_widget.dart' show AddEditBedStep1Widget;
import 'package:flutter/material.dart';

class AddEditBedStep1Model extends FlutterFlowModel<AddEditBedStep1Widget> {
  ///  Local state fields for this page.

  bool etapa1 = true;

  bool estapa2 = false;

  bool estapa3 = false;

  bool etapa4 = false;

  ///  State fields for stateful widgets in this page.

  // Model for StepIndicator.
  late StepIndicatorModel stepIndicatorModel1;
  // Model for StepIndicator.
  late StepIndicatorModel stepIndicatorModel2;
  // Model for StepIndicator.
  late StepIndicatorModel stepIndicatorModel3;
  // Model for StepIndicator.
  late StepIndicatorModel stepIndicatorModel4;
  // Model for SectionHeader.
  late SectionHeader2Model sectionHeaderModel;
  bool isDataUploading_imgCanteiro = false;
  FFUploadedFile uploadedLocalFile_imgCanteiro =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_imgCanteiro = '';

  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel1;
  // Model for Nmerocanteiro.
  late TextField2Model nmerocanteiroModel;
  // Model for Cultura.
  late TextField2Model culturaModel;
  // Model for turmamonitoramento.
  late TextField2Model turmamonitoramentoModel;
  // Model for Professor.
  late TextField2Model professorModel;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel2;
  // Model for Largura.
  late TextField2Model larguraModel;
  // Model for Comprimento.
  late TextField2Model comprimentoModel;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel3;
  // Model for Datadeplantio.
  late TextField2CopyModel datadeplantioModel;
  // Model for Datademonotoramento.
  late TextField2CopyModel datademonotoramentoModel;
  // Model for Previsodecolheita.
  late TextField2CopyModel previsodecolheitaModel;
  // Model for Datadereplantio.
  late TextField2CopyModel datadereplantioModel;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel4;
  // Model for Area_plantada.
  late TextField2Model areaPlantadaModel;
  // Model for Ph_inicial.
  late TextField2Model phInicialModel;
  // Model for Ph_monitoramento.
  late TextField2Model phMonitoramentoModel;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel5;
  // Model for Observacoes.
  late TextField2Model observacoesModel;

  @override
  void initState(BuildContext context) {
    stepIndicatorModel1 = createModel(context, () => StepIndicatorModel());
    stepIndicatorModel2 = createModel(context, () => StepIndicatorModel());
    stepIndicatorModel3 = createModel(context, () => StepIndicatorModel());
    stepIndicatorModel4 = createModel(context, () => StepIndicatorModel());
    sectionHeaderModel = createModel(context, () => SectionHeader2Model());
    sectionHeaderModel1 = createModel(context, () => SectionHeaderModel());
    nmerocanteiroModel = createModel(context, () => TextField2Model());
    culturaModel = createModel(context, () => TextField2Model());
    turmamonitoramentoModel = createModel(context, () => TextField2Model());
    professorModel = createModel(context, () => TextField2Model());
    sectionHeaderModel2 = createModel(context, () => SectionHeaderModel());
    larguraModel = createModel(context, () => TextField2Model());
    comprimentoModel = createModel(context, () => TextField2Model());
    sectionHeaderModel3 = createModel(context, () => SectionHeaderModel());
    datadeplantioModel = createModel(context, () => TextField2CopyModel());
    datademonotoramentoModel =
        createModel(context, () => TextField2CopyModel());
    previsodecolheitaModel = createModel(context, () => TextField2CopyModel());
    datadereplantioModel = createModel(context, () => TextField2CopyModel());
    sectionHeaderModel4 = createModel(context, () => SectionHeaderModel());
    areaPlantadaModel = createModel(context, () => TextField2Model());
    phInicialModel = createModel(context, () => TextField2Model());
    phMonitoramentoModel = createModel(context, () => TextField2Model());
    sectionHeaderModel5 = createModel(context, () => SectionHeaderModel());
    observacoesModel = createModel(context, () => TextField2Model());
  }

  @override
  void dispose() {
    stepIndicatorModel1.dispose();
    stepIndicatorModel2.dispose();
    stepIndicatorModel3.dispose();
    stepIndicatorModel4.dispose();
    sectionHeaderModel.dispose();
    sectionHeaderModel1.dispose();
    nmerocanteiroModel.dispose();
    culturaModel.dispose();
    turmamonitoramentoModel.dispose();
    professorModel.dispose();
    sectionHeaderModel2.dispose();
    larguraModel.dispose();
    comprimentoModel.dispose();
    sectionHeaderModel3.dispose();
    datadeplantioModel.dispose();
    datademonotoramentoModel.dispose();
    previsodecolheitaModel.dispose();
    datadereplantioModel.dispose();
    sectionHeaderModel4.dispose();
    areaPlantadaModel.dispose();
    phInicialModel.dispose();
    phMonitoramentoModel.dispose();
    sectionHeaderModel5.dispose();
    observacoesModel.dispose();
  }
}
