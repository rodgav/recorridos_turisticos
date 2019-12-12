import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:recorridos_turisticos/src/Blocs/Regiones_Bloc.dart';
import 'package:recorridos_turisticos/src/Models/Regiones_Item.dart';
import 'package:recorridos_turisticos/src/UI/Region_Detail.dart';

class RegionesList extends StatefulWidget {
  @override
  _RegionesListState createState() => _RegionesListState();
}

class _RegionesListState extends State<RegionesList> {
  RegionesBloc bloc;

  @override
  void initState() {
    bloc = RegionesBloc();
    bloc.getRegiones();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Regiones'),
      ),
      body: StreamBuilder(
          stream: bloc.regiones,
          builder: (context, AsyncSnapshot<Regiones_Item> snapshot) {
            if (snapshot.hasData) {
              return buildDanzasList(snapshot);
            } else if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }

  Widget buildDanzasList(AsyncSnapshot<Regiones_Item> snapshot) {
    return GridView.builder(
        itemCount: snapshot.data.regiones.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, childAspectRatio: 2),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              child: Container(
                padding: EdgeInsets.only(
                    top: 0.0, left: 0.0, right: 0.0, bottom: 0.0),
                child: Stack(
                  children: <Widget>[
                    CachedNetworkImage(
                      imageUrl: snapshot.data.regiones[index].imagen,
                      imageBuilder: (context, imageProvider) => Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Color.fromARGB(100, 0, 0, 0),
                                  BlendMode.hardLight)),
                        ),
                      ),
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              snapshot.data.regiones[index].nombre,
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () => OpenDetailPage(snapshot.data, index),
          );
        });
  }

  OpenDetailPage(Regiones_Item data, int index) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return RegionDetail(
        id: data.regiones[index].id,
        nombre: data.regiones[index].nombre,
        descripcion: data.regiones[index].descripcion,
        imagen: data.regiones[index].imagen,
      );
    }));
  }
}
