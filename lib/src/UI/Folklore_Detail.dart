import 'package:flutter/material.dart';
import 'package:recorridos_turisticos/src/UI/Image_Detail.dart';

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
                  )
                ];
              },
              body: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      nombre,
                      style: TextStyle(
                          fontSize: 25.00, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                    ),
                    Expanded(child: Text(descripcion))
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
