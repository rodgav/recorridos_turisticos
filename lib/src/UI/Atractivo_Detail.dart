import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AtractivoDetail extends StatefulWidget {
  final idcorredor;
  final nombre;
  final descripcion;
  final lugar;
  final latitud;
  final longitud;
  final imagen;

  AtractivoDetail(
      {this.idcorredor,
      this.nombre,
      this.descripcion,
      this.lugar,
      this.latitud,
      this.longitud,
      this.imagen});

  @override
  _AtractivoDetailState createState() => _AtractivoDetailState(
      idcorredor: idcorredor,
      nombre: nombre,
      descripcion: descripcion,
      lugar: lugar,
      latitud: latitud,
      longitud: longitud,
      imagen: imagen);
}

class _AtractivoDetailState extends State<AtractivoDetail> {
  final idcorredor;
  final nombre;
  final descripcion;
  final lugar;
  final latitud;
  final longitud;
  final imagen;

  _AtractivoDetailState(
      {this.idcorredor,
      this.nombre,
      this.descripcion,
      this.lugar,
      this.latitud,
      this.longitud,
      this.imagen});

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
                    Text('Lugar $lugar'),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                    ),
                    Text(descripcion),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              _AbrirMaps(latitud, longitud);
                            }),
                        Text(
                          'Latitud: $latitud',
                          style: TextStyle(
                              fontSize: 18.0, fontStyle: FontStyle.italic),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10.0),
                        ),
                        Text(
                          'Longitud: $longitud',
                          style: TextStyle(
                              fontSize: 18.0, fontStyle: FontStyle.italic),
                        )
                      ],
                    ),
                  ],
                ),
              ))),
    );
  }

  Future _AbrirMaps(latitud, longitud) async {
    final url =
        'https://www.google.com/maps/search/?api=1&query=$latitud,$longitud';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se puedo abrir';
    }
  }
}
