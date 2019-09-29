import 'package:recorridos_turisticos/src/Models/Atractivos_Item.dart';
import 'package:recorridos_turisticos/src/Models/Corredores_Item.dart';
import 'package:recorridos_turisticos/src/Models/Danzas_Item.dart';
import 'package:recorridos_turisticos/src/Models/FechasFestivas_Item.dart';
import 'package:recorridos_turisticos/src/Models/Folklore_Item.dart';
import 'package:recorridos_turisticos/src/Models/Imagenes_Item.dart';
import 'package:recorridos_turisticos/src/Models/Regiones_Item.dart';
import 'package:recorridos_turisticos/src/resources/RecoTuri_API_Provider.dart';

class RecoTuriRepository {
  final recoturiAPIProvider = RecorrTurisAPIProvider();

  Future<Atractivos_Item> getAtractivos() => recoturiAPIProvider.getAtractivos();

  Future<Danzas_Item> getDanzas() => recoturiAPIProvider.getDanzas();

  Future<FechasFestivas_Item> getFechasFestivas() =>
      recoturiAPIProvider.getFechasFestivas();

  Future<Folklore_Item> getFolklore() => recoturiAPIProvider.getFolklore();

  Future<Imagenes_Item> getImagenes() => recoturiAPIProvider.getImagenes();

  Future<Regiones_Item> getRegiones() => recoturiAPIProvider.getRegiones();

  Future<Corredores_Item> getCorredores() => recoturiAPIProvider.getCorredores();

  Future<Atractivos_Item> getAtractivosCorredor(String corredorID) => recoturiAPIProvider.getAtractivosCorredor(corredorID);

}
