import 'package:flutter/material.dart';

class FolkloreDetail extends StatefulWidget {
  final id;
  final nombre;
  final descripcion;
  final imagen;

  FolkloreDetail({this.id, this.nombre, this.descripcion, this.imagen});

  @override
  _FolkloreDetailState createState() => _FolkloreDetailState(
      id: id, nombre: nombre, descripcion: descripcion, imagen: imagen);
}

class _FolkloreDetailState extends State<FolkloreDetail> {
  final id;
  final nombre;
  final descripcion;
  final imagen;

  _FolkloreDetailState({this.id, this.nombre, this.descripcion, this.imagen});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
