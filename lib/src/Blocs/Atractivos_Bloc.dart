import 'package:recorridos_turisticos/src/Models/Atractivos_Item.dart';
import 'package:recorridos_turisticos/src/resources/RecoTuri_Repository.dart';
import 'package:rxdart/rxdart.dart';

class AtractivosBloc {
  final _recoturiRepository = RecoTuriRepository();
  final _atractivos = PublishSubject<Atractivos_Item>();

  Observable<Atractivos_Item> get atractivos => _atractivos.stream;

  getAtractivos() async {
    Atractivos_Item atractivos_item = await _recoturiRepository.getAtractivos();
    _atractivos.add(atractivos_item);
  }

  dispose() {
    _atractivos.close();
  }
}
