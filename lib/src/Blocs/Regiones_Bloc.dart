import 'package:recorridos_turisticos/src/Models/Regiones_Item.dart';
import 'package:recorridos_turisticos/src/resources/RecoTuri_Repository.dart';
import 'package:rxdart/rxdart.dart';

class RegionesBloc{
  final _recoturiRepository = RecoTuriRepository();
  final _regiones = PublishSubject<Regiones_Item>();

  Observable<Regiones_Item> get regiones => _regiones.stream;

  getRegiones() async {
    Regiones_Item regiones_item = await _recoturiRepository.getRegiones();
    _regiones.add(regiones_item);
  }

  dispose() {
    _regiones.close();
  }
}