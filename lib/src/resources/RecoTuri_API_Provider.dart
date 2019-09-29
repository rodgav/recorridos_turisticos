import 'dart:convert';
import 'package:http/http.dart';
import 'package:recorridos_turisticos/src/Models/Atractivos_Item.dart';
import 'package:recorridos_turisticos/src/Models/Corredores_Item.dart';
import 'package:recorridos_turisticos/src/Models/Danzas_Item.dart';
import 'package:recorridos_turisticos/src/Models/FechasFestivas_Item.dart';
import 'package:recorridos_turisticos/src/Models/Folklore_Item.dart';
import 'package:recorridos_turisticos/src/Models/Imagenes_Item.dart';
import 'package:recorridos_turisticos/src/Models/Regiones_Item.dart';

class RecorrTurisAPIProvider {
  Client http = Client();
  final _baseUrl = 'https://rsgm.online/APICorredorTuristico/V1/?accion=';

  Future<Atractivos_Item> getAtractivos() async {
    final response = await http.get('${_baseUrl}atractivos');

    if (response.statusCode == 200) {
      return Atractivos_Item.fromJson(json.decode(response.body));
    } else {
      throw Exception('Error al obtener atractivos');
    }
  }

  Future<Danzas_Item> getDanzas() async {
    final response = await http.get('${_baseUrl}danzas');
    if (response.statusCode == 200) {
      return Danzas_Item.fromJson(json.decode(response.body));
    } else {
      throw Exception('Error al obtener las danzas');
    }
  }

  Future<FechasFestivas_Item> getFechasFestivas() async {
    final response = await http.get('${_baseUrl}fechasfestivas');
    if (response.statusCode == 200) {
      return FechasFestivas_Item.fromJson(json.decode(response.body));
    } else {
      throw Exception('Error al obtener las fechas festivas');
    }
  }

  Future<Folklore_Item> getFolklore() async {
    final response = await http.get('${_baseUrl}folklore');
    if (response.statusCode == 200) {
      return Folklore_Item.fromJson(json.decode(response.body));
    } else {
      throw Exception('Error al obtener el folklore');
    }
  }

  Future<Imagenes_Item> getImagenes() async {
    final response = await http.get('${_baseUrl}imagenes');
    if (response.statusCode == 200) {
      return Imagenes_Item.fromJson(json.decode(response.body));
    } else {
      throw Exception('Error al obtener las imagenes');
    }
  }

  Future<Regiones_Item> getRegiones() async {
    final response = await http.get('${_baseUrl}regiones');
    if (response.statusCode == 200) {
      return Regiones_Item.fromJson(json.decode(response.body));
    } else {
      throw Exception('Error al obtener las regiones');
    }
  }

  Future<Corredores_Item> getCorredores() async {
    final response = await http.get('${_baseUrl}corredores');
    if (response.statusCode == 200) {
      return Corredores_Item.fromJson(json.decode(response.body));
    } else {
      throw Exception('Error al obtener los corredores');
    }
  }

  Future<Atractivos_Item> getAtractivosCorredor(String corredorID) async {
    final response =
        await http.get('${_baseUrl}atractivoscorredor&id=$corredorID');
    if (response.statusCode == 200) {
      return Atractivos_Item.fromJson(json.decode(response.body));
    } else {
      throw Exception('Error al obtener los atractivos');
    }
  }
}
