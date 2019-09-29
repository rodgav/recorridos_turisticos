import 'package:flutter/material.dart';
import 'package:recorridos_turisticos/src/UI/AtractivosList.dart';
import 'package:recorridos_turisticos/src/UI/CorredoresList.dart';
import 'package:recorridos_turisticos/src/UI/DanzasList.dart';
import 'package:recorridos_turisticos/src/UI/FechasFestivasList.dart';
import 'package:recorridos_turisticos/src/UI/FolkloreList.dart';
import 'package:recorridos_turisticos/src/UI/ImagenesList.dart';
import 'package:recorridos_turisticos/src/UI/RegionesList.dart';

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recorridos Turisticos PUNO'),
      ),
      body: Scaffold(
          body: GridView.count(
        primary: false,
        padding: EdgeInsets.all(5),
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
        crossAxisCount: 2,
        children: <Widget>[
          /* GestureDetector(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              child: Container(
                padding: EdgeInsets.only(
                    top: 0.0, left: 0.0, right: 0.0, bottom: 0.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                      image: ExactAssetImage('imagenes/puno.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Color.fromARGB(100, 0, 0, 0), BlendMode.hardLight)),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 60,
                      bottom: 60,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'PUNO',
                              style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'CIUDAD',
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            onTap: () {},
          ),
          GestureDetector(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              child: Container(
                padding: EdgeInsets.only(
                    top: 0.0, left: 0.0, right: 0.0, bottom: 0.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                      image: ExactAssetImage('imagenes/puno.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Color.fromARGB(100, 0, 0, 0), BlendMode.hardLight)),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 25,
                      bottom: 60,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'ATRACTIVOS',
                              style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'TURISTICOS',
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              child: Container(
                padding: EdgeInsets.only(
                    top: 0.0, left: 0.0, right: 0.0, bottom: 0.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                      image: ExactAssetImage('imagenes/puno.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Color.fromARGB(100, 0, 0, 0), BlendMode.hardLight)),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 40,
                      bottom: 50,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'FECHAS',
                              style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              child: Container(
                padding: EdgeInsets.only(
                    top: 0.0, left: 0.0, right: 0.0, bottom: 0.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                      image: ExactAssetImage('imagenes/puno.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Color.fromARGB(100, 0, 0, 0), BlendMode.hardLight)),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 30,
                      bottom: 50,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'FOLKLORE',
                              style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              child: Container(
                padding: EdgeInsets.only(
                    top: 0.0, left: 0.0, right: 0.0, bottom: 0.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                      image: ExactAssetImage('imagenes/puno.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Color.fromARGB(100, 0, 0, 0), BlendMode.hardLight)),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 40,
                      bottom: 50,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'DANZAS',
                              style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              child: Container(
                padding: EdgeInsets.only(
                    top: 0.0, left: 0.0, right: 0.0, bottom: 0.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                      image: ExactAssetImage('imagenes/puno.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Color.fromARGB(100, 0, 0, 0), BlendMode.hardLight)),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 30,
                      bottom: 50,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'IMAGENES',
                              style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),*/
          GestureDetector(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              child: Container(
                padding: EdgeInsets.only(
                    top: 0.0, left: 0.0, right: 0.0, bottom: 0.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                      image: ExactAssetImage('imagenes/puno.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Color.fromARGB(100, 0, 0, 0), BlendMode.hardLight)),
                ),
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(top: 70.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'REGION',
                              style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'PUNO',
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegionesList()));
            },
          ),
          GestureDetector(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              child: Container(
                padding: EdgeInsets.only(
                    top: 0.0, left: 0.0, right: 0.0, bottom: 0.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                      image: ExactAssetImage('imagenes/lago.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Color.fromARGB(100, 0, 0, 0), BlendMode.hardLight)),
                ),
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(top: 70.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'ATRACTIVOS',
                              style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'TURISTICOS',
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AtractivosList()));
            },
          ),
          GestureDetector(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              child: Container(
                padding: EdgeInsets.only(
                    top: 0.0, left: 0.0, right: 0.0, bottom: 0.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                      image: ExactAssetImage('imagenes/fechas.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Color.fromARGB(100, 0, 0, 0), BlendMode.hardLight)),
                ),
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(top: 80.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'FECHAS',
                              style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FechasFestivasList()));
            },
          ),
          GestureDetector(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              child: Container(
                padding: EdgeInsets.only(
                    top: 0.0, left: 0.0, right: 0.0, bottom: 0.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                      image: ExactAssetImage('imagenes/folklore.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Color.fromARGB(100, 0, 0, 0), BlendMode.hardLight)),
                ),
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(top: 80.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'FOLKLORE',
                              style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FolkloreList()));
            },
          ),
          GestureDetector(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              child: Container(
                padding: EdgeInsets.only(
                    top: 0.0, left: 0.0, right: 0.0, bottom: 0.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                      image: ExactAssetImage('imagenes/danzas.jpeg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Color.fromARGB(100, 0, 0, 0), BlendMode.hardLight)),
                ),
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(top: 80.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'DANZAS',
                              style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DanzasList()));
            },
          ),
          GestureDetector(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              child: Container(
                padding: EdgeInsets.only(
                    top: 0.0, left: 0.0, right: 0.0, bottom: 0.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                      image: ExactAssetImage('imagenes/fotos.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Color.fromARGB(100, 0, 0, 0), BlendMode.hardLight)),
                ),
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(top: 80.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'IMAGENES',
                              style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ImagenesList()));
            },
          ),
          GestureDetector(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              child: Container(
                padding: EdgeInsets.only(
                    top: 0.0, left: 0.0, right: 0.0, bottom: 0.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                      image: ExactAssetImage('imagenes/corredores.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Color.fromARGB(100, 0, 0, 0), BlendMode.hardLight)),
                ),
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(top: 80.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'CORREDORES',
                              style: TextStyle(
                                  fontSize: 22.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CorredoresList()));
            },
          ),
        ],
      )),
    );
  }
}
