import '../database.dart';

class CanteirosTable extends SupabaseTable<CanteirosRow> {
  @override
  String get tableName => 'canteiros';

  @override
  CanteirosRow createRow(Map<String, dynamic> data) => CanteirosRow(data);
}

class CanteirosRow extends SupabaseDataRow {
  CanteirosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CanteirosTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  int get numero => getField<int>('numero')!;
  set numero(int value) => setField<int>('numero', value);

  String? get cultura => getField<String>('cultura');
  set cultura(String? value) => setField<String>('cultura', value);

  double? get comprimento => getField<double>('comprimento');
  set comprimento(double? value) => setField<double>('comprimento', value);

  double? get largura => getField<double>('largura');
  set largura(double? value) => setField<double>('largura', value);

  double? get areaM2 => getField<double>('area_m2');
  set areaM2(double? value) => setField<double>('area_m2', value);

  DateTime? get dataPlantio => getField<DateTime>('data_plantio');
  set dataPlantio(DateTime? value) => setField<DateTime>('data_plantio', value);

  DateTime? get dataMonitoramento => getField<DateTime>('data_monitoramento');
  set dataMonitoramento(DateTime? value) =>
      setField<DateTime>('data_monitoramento', value);

  double? get areaPlantada => getField<double>('area_plantada');
  set areaPlantada(double? value) => setField<double>('area_plantada', value);

  double? get phInicial => getField<double>('ph_inicial');
  set phInicial(double? value) => setField<double>('ph_inicial', value);

  double? get phMonitoramento => getField<double>('ph_monitoramento');
  set phMonitoramento(double? value) =>
      setField<double>('ph_monitoramento', value);

  DateTime? get previsaoColheita => getField<DateTime>('previsao_colheita');
  set previsaoColheita(DateTime? value) =>
      setField<DateTime>('previsao_colheita', value);

  DateTime? get previsaoReplantio => getField<DateTime>('previsao_replantio');
  set previsaoReplantio(DateTime? value) =>
      setField<DateTime>('previsao_replantio', value);

  String? get turma => getField<String>('turma');
  set turma(String? value) => setField<String>('turma', value);

  String? get professor => getField<String>('professor');
  set professor(String? value) => setField<String>('professor', value);

  String? get observacoes => getField<String>('observacoes');
  set observacoes(String? value) => setField<String>('observacoes', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);
}
