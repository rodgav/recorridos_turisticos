import 'package:recorridos_turisticos/src/Models/Folklore_Item.dart';
import 'package:recorridos_turisticos/src/resources/RecoTuri_Repository.dart';
import 'package:rxdart/rxdart.dart';

class FolkloreBloc {
  final _recoturiRepository = RecoTuriRepository();
  final _folklore = PublishSubject<Folklore_Item>();

  Observable<Folklore_Item> get folklore => _folklore.stream;

  getFolklore() async {
    Folklore_Item folklore_item = await _recoturiRepository.getFolklore();
    _folklore.add(folklore_item);
  }

  dispose() {
    _folklore.close();
  }
}
