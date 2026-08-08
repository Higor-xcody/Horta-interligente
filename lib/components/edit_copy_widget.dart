import '/backend/supabase/supabase.dart';
import '/components/text_field2_copy_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'edit_copy_model.dart';
export 'edit_copy_model.dart';

class EditCopyWidget extends StatefulWidget {
  const EditCopyWidget({
    super.key,
    required this.coluna,
    required this.id,
  });

  final String? coluna;
  final String? id;

  @override
  State<EditCopyWidget> createState() => _EditCopyWidgetState();
}

class _EditCopyWidgetState extends State<EditCopyWidget> {
  late EditCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditCopyModel());
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
                    Padding(
                      padding: EdgeInsets.all(
                          FlutterFlowTheme.of(context).designToken.spacing.md),
                      child: wrapWithModel(
                        model: _model.textField2CopyModel,
                        updateCallback: () => safeSetState(() {}),
                        child: TextField2CopyWidget(
                          label: widget.coluna,
                          hint: dateTimeFormat(
                            "d/M/y",
                            getCurrentTimestamp,
                            locale: FFLocalizations.of(context).languageCode,
                          ),
                          icon: 'padrão',
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await CanteirosTable().update(
                            data: {
                              'data_plantio': supaSerialize<DateTime>(
                                  widget.coluna == 'Data plantio'
                                      ? _model.textField2CopyModel.datePicked
                                      : columnCanteirosRow?.dataPlantio),
                              'data_monitoramento': supaSerialize<DateTime>(
                                  widget.coluna == 'Data monitoramento'
                                      ? _model.textField2CopyModel.datePicked
                                      : columnCanteirosRow?.dataMonitoramento),
                              'previsao_colheita': supaSerialize<DateTime>(
                                  widget.coluna == 'Data colheita'
                                      ? _model.textField2CopyModel.datePicked
                                      : columnCanteirosRow?.previsaoColheita),
                              'previsao_replantio': supaSerialize<DateTime>(
                                  widget.coluna == 'Data replantio'
                                      ? _model.textField2CopyModel.datePicked
                                      : columnCanteirosRow?.previsaoReplantio),
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
