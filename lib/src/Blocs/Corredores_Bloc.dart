import 'package:recorridos_turisticos/src/Models/Corredores_Item.dart';
import 'package:recorridos_turisticos/src/resources/RecoTuri_Repository.dart';
import 'package:rxdart/rxdart.dart';

class CorredoresBloc {
  final _recoturiRepository = RecoTuriRepository();
  final _corredores = PublishSubject<Corredores_Item>();

  Observable<Corredores_Item> get danzas => _corredores.stream;

  getDanzas() async {
    Corredores_Item corredores_item = await _recoturiRepository.getCorredores();
    _corredores.add(corredores_item);
  }

  dispose() {
    _corredores.close();
  }
}
