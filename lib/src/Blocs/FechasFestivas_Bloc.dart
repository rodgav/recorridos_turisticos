import 'package:recorridos_turisticos/src/Models/FechasFestivas_Item.dart';
import 'package:recorridos_turisticos/src/resources/RecoTuri_Repository.dart';
import 'package:rxdart/rxdart.dart';

class FechasFestivasBloc{
  final _recoturiRepository = RecoTuriRepository();
  final _fechasfestivas = PublishSubject<FechasFestivas_Item>();

  Observable<FechasFestivas_Item> get fechasfestivas => _fechasfestivas.stream;

  getFechasFestivas() async {
    FechasFestivas_Item fechasFestivas_Item = await _recoturiRepository.getFechasFestivas();
    _fechasfestivas.add(fechasFestivas_Item);
  }

  dispose() {
    _fechasfestivas.close();
  }
}