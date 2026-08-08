import '../database.dart';

class SenhaTable extends SupabaseTable<SenhaRow> {
  @override
  String get tableName => 'Senha';

  @override
  SenhaRow createRow(Map<String, dynamic> data) => SenhaRow(data);
}

class SenhaRow extends SupabaseDataRow {
  SenhaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SenhaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get senha => getField<String>('Senha')!;
  set senha(String value) => setField<String>('Senha', value);
}
