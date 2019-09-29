import 'package:recorridos_turisticos/src/Models/Danzas_Item.dart';
import 'package:recorridos_turisticos/src/resources/RecoTuri_Repository.dart';
import 'package:rxdart/rxdart.dart';

class DanzasBloc{
  final _recoturiRepository = RecoTuriRepository();
  final _danzas = PublishSubject<Danzas_Item>();

  Observable<Danzas_Item> get danzas => _danzas.stream;

  getDanzas() async {
    Danzas_Item danzas_item = await _recoturiRepository.getDanzas();
    _danzas.add(danzas_item);
  }

  dispose() {
    _danzas.close();
  }
}