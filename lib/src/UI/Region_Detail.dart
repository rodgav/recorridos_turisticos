import 'package:flutter/material.dart';
import 'package:recorridos_turisticos/src/UI/Image_Detail.dart';

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
    return Scaffold(
      body: SafeArea(
          top: false,
          bottom: false,
          child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    expandedHeight: 200.00,
                    elevation: 0.0,
                    floating: true,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Image.network(
                        imagen,
                        fit: BoxFit.cover,
                      ),
                    ),
                    actions: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.image,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            OpenImagenDetail(imagen);
                          }),
                    ],
                  ),
                ];
              },
              body: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    Text(
                      nombre,
                      style: TextStyle(
                          fontSize: 25.00, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                    ),
                    Text(descripcion),
                  ],
                ),
              ))),
    );
  }

  void OpenImagenDetail(imagen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ImageDetail(
        imagen: imagen,
      );
    }));
  }
}
