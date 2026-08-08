import '/backend/supabase/supabase.dart';
import '/components/harvest_list_item_widget.dart';
import '/components/sem_resultado_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cronograma_de_colheita_model.dart';
export 'cronograma_de_colheita_model.dart';

class CronogramaDeColheitaWidget extends StatefulWidget {
  const CronogramaDeColheitaWidget({super.key});

  static String routeName = 'CronogramaDeColheita';
  static String routePath = '/cronogramaDeColheita';

  @override
  State<CronogramaDeColheitaWidget> createState() =>
      _CronogramaDeColheitaWidgetState();
}

class _CronogramaDeColheitaWidgetState
    extends State<CronogramaDeColheitaWidget> {
  late CronogramaDeColheitaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CronogramaDeColheitaModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.rectangle,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(18.0, 24.0, 18.0, 16.0),
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FlutterFlowIconButton(
                              borderRadius: 8.0,
                              buttonSize: 40.0,
                              fillColor: Colors.transparent,
                              icon: Icon(
                                Icons.arrow_back_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                              onPressed: () async {
                                context.safePop();
                              },
                            ),
                            AutoSizeText(
                              'Cronograma de Colheita',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                    lineHeight: 1.3,
                                  ),
                              overflow: TextOverflow.fade,
                            ),
                            Opacity(
                              opacity: 0.0,
                              child: Container(
                                width: 18.0,
                                height: 15.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ].divide(SizedBox(height: 16.0)),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.check_circle_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .success,
                                          size: 20.0,
                                        ),
                                        Text(
                                          'Disponível Agora',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                font:
                                                    GoogleFonts.plusJakartaSans(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .fontStyle,
                                                lineHeight: 1.2,
                                              ),
                                        ),
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                  ),
                                  StreamBuilder<List<CanteirosRow>>(
                                    stream: _model.listViewSupabaseStream1 ??=
                                        SupaFlow.client
                                            .from("canteiros")
                                            .stream(primaryKey: ['id'])
                                            .eqOrNull(
                                              'previsao_colheita',
                                              supaSerialize<DateTime>(
                                                  getCurrentTimestamp),
                                            )
                                            .order('numero', ascending: true)
                                            .map((list) => list
                                                .map((item) =>
                                                    CanteirosRow(item))
                                                .toList()),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<CanteirosRow>
                                          listViewCanteirosRowList =
                                          snapshot.data!;

                                      if (listViewCanteirosRowList.isEmpty) {
                                        return SemResultadoWidget();
                                      }

                                      return ListView.separated(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewCanteirosRowList.length,
                                        separatorBuilder: (_, __) =>
                                            SizedBox(height: 8.0),
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewCanteirosRow =
                                              listViewCanteirosRowList[
                                                  listViewIndex];
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                TesteWidget.routeName,
                                                queryParameters: {
                                                  'id': serializeParam(
                                                    listViewCanteirosRow.id,
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: wrapWithModel(
                                              model: _model
                                                  .harvestListItemModels1
                                                  .getModel(
                                                listViewCanteirosRow.id!,
                                                listViewIndex,
                                              ),
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: HarvestListItemWidget(
                                                key: Key(
                                                  'Key7am_${listViewCanteirosRow.id!}',
                                                ),
                                                bed_no:
                                                    'Canteiro #${listViewCanteirosRow.numero.toString()}',
                                                date: functions.formatarData(
                                                    listViewCanteirosRow
                                                        .previsaoColheita!),
                                                days_text: 'Hoje',
                                                img_desc:
                                                    valueOrDefault<String>(
                                                  () {
                                                    if (listViewCanteirosRow
                                                            .foto !=
                                                        'nada') {
                                                      return listViewCanteirosRow
                                                          .foto;
                                                    } else if (listViewCanteirosRow
                                                            .foto ==
                                                        'nada') {
                                                      return 'https://i.imgur.com/veOn4so.jpeg';
                                                    } else {
                                                      return 'https://i.imgur.com/veOn4so.jpeg';
                                                    }
                                                  }(),
                                                  'https://i.imgur.com/veOn4so.jpeg',
                                                ),
                                                plant_name: listViewCanteirosRow
                                                    .cultura,
                                                status: 'ready',
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.schedule_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          size: 20.0,
                                        ),
                                        Text(
                                          'Próximos 7 dias',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                font:
                                                    GoogleFonts.plusJakartaSans(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .fontStyle,
                                                lineHeight: 1.2,
                                              ),
                                        ),
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                  ),
                                ),
                              ),
                              StreamBuilder<List<CanteirosRow>>(
                                stream: _model.listViewSupabaseStream2 ??=
                                    SupaFlow.client
                                        .from("canteiros")
                                        .stream(primaryKey: ['id'])
                                        .gtOrNull(
                                          'previsao_colheita',
                                          supaSerialize<DateTime>(
                                              getCurrentTimestamp),
                                        )
                                        .map((list) => list
                                            .map((item) => CanteirosRow(item))
                                            .toList()),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<CanteirosRow> listViewCanteirosRowList =
                                      snapshot.data!;

                                  if (listViewCanteirosRowList.isEmpty) {
                                    return SemResultadoWidget();
                                  }

                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: listViewCanteirosRowList.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 8.0),
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewCanteirosRow =
                                          listViewCanteirosRowList[
                                              listViewIndex];
                                      return Visibility(
                                        visible: functions.estaNosProximos7Dias(
                                                listViewCanteirosRow
                                                    .previsaoColheita!) ==
                                            true,
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              TesteWidget.routeName,
                                              queryParameters: {
                                                'id': serializeParam(
                                                  listViewCanteirosRow.id,
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                          child: wrapWithModel(
                                            model: _model.harvestListItemModels2
                                                .getModel(
                                              listViewCanteirosRow.id!,
                                              listViewIndex,
                                            ),
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: HarvestListItemWidget(
                                              key: Key(
                                                'Keywzz_${listViewCanteirosRow.id!}',
                                              ),
                                              bed_no:
                                                  'Canteiro #${listViewCanteirosRow.numero.toString()}',
                                              date: functions.formatarData(
                                                  listViewCanteirosRow
                                                      .previsaoColheita!),
                                              days_text: functions.diasNoFuturo(
                                                  listViewCanteirosRow
                                                      .previsaoColheita!),
                                              img_desc: valueOrDefault<String>(
                                                () {
                                                  if (listViewCanteirosRow
                                                          .foto !=
                                                      'nada') {
                                                    return listViewCanteirosRow
                                                        .foto;
                                                  } else if (listViewCanteirosRow
                                                          .foto ==
                                                      'nada') {
                                                    return 'https://i.imgur.com/veOn4so.jpeg';
                                                  } else {
                                                    return 'https://i.imgur.com/veOn4so.jpeg';
                                                  }
                                                }(),
                                                'https://i.imgur.com/veOn4so.jpeg',
                                              ),
                                              plant_name:
                                                  listViewCanteirosRow.cultura,
                                              status: 'soon',
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.event_note_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 20.0,
                                        ),
                                        Text(
                                          'Mais tarde',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                font:
                                                    GoogleFonts.plusJakartaSans(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .fontStyle,
                                                lineHeight: 1.2,
                                              ),
                                        ),
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                  ),
                                ),
                              ),
                              StreamBuilder<List<CanteirosRow>>(
                                stream: _model.listViewSupabaseStream3 ??=
                                    SupaFlow.client
                                        .from("canteiros")
                                        .stream(primaryKey: ['id'])
                                        .gtOrNull(
                                          'previsao_colheita',
                                          supaSerialize<DateTime>(
                                              getCurrentTimestamp),
                                        )
                                        .order('previsao_colheita',
                                            ascending: true)
                                        .map((list) => list
                                            .map((item) => CanteirosRow(item))
                                            .toList()),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<CanteirosRow> listViewCanteirosRowList =
                                      snapshot.data!;

                                  if (listViewCanteirosRowList.isEmpty) {
                                    return SemResultadoWidget();
                                  }

                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: listViewCanteirosRowList.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 8.0),
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewCanteirosRow =
                                          listViewCanteirosRowList[
                                              listViewIndex];
                                      return Visibility(
                                        visible: functions.estaNosProximos7Dias(
                                                listViewCanteirosRow
                                                    .previsaoColheita!) ==
                                            false,
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              TesteWidget.routeName,
                                              queryParameters: {
                                                'id': serializeParam(
                                                  listViewCanteirosRow.id,
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                          child: wrapWithModel(
                                            model: _model.harvestListItemModels3
                                                .getModel(
                                              listViewCanteirosRow.id!,
                                              listViewIndex,
                                            ),
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: HarvestListItemWidget(
                                              key: Key(
                                                'Keyn6d_${listViewCanteirosRow.id!}',
                                              ),
                                              bed_no:
                                                  'Canteiro #${listViewCanteirosRow.numero.toString()}',
                                              date: functions.formatarData(
                                                  listViewCanteirosRow
                                                      .previsaoColheita!),
                                              days_text: functions.diasNoFuturo(
                                                  listViewCanteirosRow
                                                      .previsaoColheita!),
                                              img_desc: valueOrDefault<String>(
                                                () {
                                                  if (listViewCanteirosRow
                                                          .foto !=
                                                      'nada') {
                                                    return listViewCanteirosRow
                                                        .foto;
                                                  } else if (listViewCanteirosRow
                                                          .foto ==
                                                      'nada') {
                                                    return 'https://i.imgur.com/veOn4so.jpeg';
                                                  } else {
                                                    return 'https://i.imgur.com/veOn4so.jpeg';
                                                  }
                                                }(),
                                                'https://i.imgur.com/veOn4so.jpeg',
                                              ),
                                              plant_name:
                                                  listViewCanteirosRow.cultura,
                                              status: 'soon',
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.rectangle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
