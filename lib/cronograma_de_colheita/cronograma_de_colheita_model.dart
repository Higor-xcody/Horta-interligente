import '/backend/supabase/supabase.dart';
import '/components/harvest_list_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cronograma_de_colheita_widget.dart' show CronogramaDeColheitaWidget;
import 'package:flutter/material.dart';

class CronogramaDeColheitaModel
    extends FlutterFlowModel<CronogramaDeColheitaWidget> {
  ///  State fields for stateful widgets in this page.

  Stream<List<CanteirosRow>>? listViewSupabaseStream1;
  // Models for HarvestListItem.
  late FlutterFlowDynamicModels<HarvestListItemModel> harvestListItemModels1;
  Stream<List<CanteirosRow>>? listViewSupabaseStream2;
  // Models for HarvestListItem.
  late FlutterFlowDynamicModels<HarvestListItemModel> harvestListItemModels2;
  Stream<List<CanteirosRow>>? listViewSupabaseStream3;
  // Models for HarvestListItem.
  late FlutterFlowDynamicModels<HarvestListItemModel> harvestListItemModels3;

  @override
  void initState(BuildContext context) {
    harvestListItemModels1 =
        FlutterFlowDynamicModels(() => HarvestListItemModel());
    harvestListItemModels2 =
        FlutterFlowDynamicModels(() => HarvestListItemModel());
    harvestListItemModels3 =
        FlutterFlowDynamicModels(() => HarvestListItemModel());
  }

  @override
  void dispose() {
    harvestListItemModels1.dispose();
    harvestListItemModels2.dispose();
    harvestListItemModels3.dispose();
  }
}
