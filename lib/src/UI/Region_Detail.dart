import 'package:flutter/material.dart';

class RegionDetail extends StatefulWidget {
  final id;
  final nombre;
  final descripcion;
  final imagen;

  RegionDetail({this.id, this.nombre, this.descripcion, this.imagen});

  @override
  _RegionDetailState createState() => _RegionDetailState(
      id: id, nombre: nombre, descripcion: descripcion, imagen: imagen);
}

class _RegionDetailState extends State<RegionDetail> {
  final id;
  final nombre;
  final descripcion;
  final imagen;

  _RegionDetailState({this.id, this.nombre, this.descripcion, this.imagen});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
