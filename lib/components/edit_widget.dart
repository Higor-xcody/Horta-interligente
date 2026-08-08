import '/backend/supabase/supabase.dart';
import '/components/text_field2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'edit_model.dart';
export 'edit_model.dart';

class EditWidget extends StatefulWidget {
  const EditWidget({
    super.key,
    required this.coluna,
    required this.id,
  });

  final String? coluna;
  final String? id;

  @override
  State<EditWidget> createState() => _EditWidgetState();
}

class _EditWidgetState extends State<EditWidget> {
  late EditModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CanteirosRow>>(
      future: CanteirosTable().querySingleRow(
        queryFn: (q) => q.eqOrNull(
          'id',
          widget.id,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        List<CanteirosRow> columnCanteirosRowList = snapshot.data!;

        final columnCanteirosRow = columnCanteirosRowList.isNotEmpty
            ? columnCanteirosRowList.first
            : null;

        return Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(
                  FlutterFlowTheme.of(context).designToken.spacing.md),
              child: Container(
                width: double.infinity,
                height: 153.13,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsets.all(FlutterFlowTheme.of(context)
                            .designToken
                            .spacing
                            .md),
                        child: wrapWithModel(
                          model: _model.textField2Model,
                          updateCallback: () => safeSetState(() {}),
                          child: TextField2Widget(
                            label: 'edit',
                            hint: 'Digite a sua alteração aqui.',
                            icon: 'padrão',
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await CanteirosTable().update(
                            data: {
                              'numero': widget.coluna == 'numero'
                                  ? int.tryParse(_model
                                      .textField2Model.inputTextController.text)
                                  : columnCanteirosRow?.numero,
                              'cultura': widget.coluna == 'cultura'
                                  ? _model
                                      .textField2Model.inputTextController.text
                                  : columnCanteirosRow?.cultura,
                              'comprimento': widget.coluna == 'comprimento'
                                  ? double.tryParse(_model
                                      .textField2Model.inputTextController.text)
                                  : columnCanteirosRow?.comprimento,
                              'largura': widget.coluna == 'largura'
                                  ? double.tryParse(_model
                                      .textField2Model.inputTextController.text)
                                  : columnCanteirosRow?.largura,
                              'area_plantada': widget.coluna == 'area plantada'
                                  ? double.tryParse(_model
                                      .textField2Model.inputTextController.text)
                                  : columnCanteirosRow?.areaPlantada,
                              'ph_inicial': widget.coluna == 'ph inicial'
                                  ? double.tryParse(_model
                                      .textField2Model.inputTextController.text)
                                  : columnCanteirosRow?.phInicial,
                              'ph_monitoramento':
                                  widget.coluna == 'ph monitoramento'
                                      ? double.tryParse(_model.textField2Model
                                          .inputTextController.text)
                                      : columnCanteirosRow?.phMonitoramento,
                              'turma': widget.coluna == 'turma'
                                  ? _model
                                      .textField2Model.inputTextController.text
                                  : columnCanteirosRow?.turma,
                              'professor': widget.coluna == 'professor'
                                  ? _model
                                      .textField2Model.inputTextController.text
                                  : columnCanteirosRow?.professor,
                              'observacoes': widget.coluna == 'observações'
                                  ? _model
                                      .textField2Model.inputTextController.text
                                  : columnCanteirosRow?.observacoes,
                              'area_m2': () {
                                if (widget.coluna == 'largura') {
                                  return functions.multiplicar(
                                      columnCanteirosRow!.comprimento!,
                                      double.parse(_model.textField2Model
                                          .inputTextController.text));
                                } else if (widget.coluna == 'comprimento') {
                                  return functions.multiplicar(
                                      columnCanteirosRow!.largura!,
                                      double.parse(_model.textField2Model
                                          .inputTextController.text));
                                } else {
                                  return columnCanteirosRow?.areaM2;
                                }
                              }(),
                            },
                            matchingRows: (rows) => rows.eqOrNull(
                              'id',
                              widget.id,
                            ),
                          );
                          Navigator.pop(context);
                        },
                        text: 'Editar',
                        options: FFButtonOptions(
                          width: 112.91,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
