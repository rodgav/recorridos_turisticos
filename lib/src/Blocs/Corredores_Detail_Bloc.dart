
import 'package:recorridos_turisticos/src/Models/Atractivos_Item.dart';
import 'package:recorridos_turisticos/src/resources/RecoTuri_Repository.dart';
import 'package:rxdart/rxdart.dart';

class CorredorDetailBloc{
  final _recoturiRepository = RecoTuriRepository();
  final _atractivos = PublishSubject<Atractivos_Item>();

  Observable<Atractivos_Item> get atractivos => _atractivos.stream;

  dispose(){
    _atractivos.close();
  }

  getAtractivosCorredor(String corredorID) async {
    Atractivos_Item atractivos_item = await _recoturiRepository.getAtractivosCorredor(corredorID);
    _atractivos.sink.add(atractivos_item);
  }
}