import 'package:recorridos_turisticos/src/Models/Imagenes_Item.dart';
import 'package:recorridos_turisticos/src/resources/RecoTuri_Repository.dart';
import 'package:rxdart/rxdart.dart';

class ImagenesBloc{
  final _recoturiRepository = RecoTuriRepository();
  final _imagenes = PublishSubject<Imagenes_Item>();

  Observable<Imagenes_Item> get imagenes => _imagenes.stream;

  getImagenes() async {
    Imagenes_Item imagenes_item = await _recoturiRepository.getImagenes();
    _imagenes.add(imagenes_item);
  }

  dispose() {
    _imagenes.close();
  }
}