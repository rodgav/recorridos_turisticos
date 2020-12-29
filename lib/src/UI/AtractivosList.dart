import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:recorridos_turisticos/src/Blocs/Atractivos_Bloc.dart';
import 'package:recorridos_turisticos/src/Models/Atractivos_Item.dart';
import 'package:recorridos_turisticos/src/UI/Atractivo_Detail.dart';

class AtractivosList extends StatefulWidget {
  @override
  _AtractivosListState createState() => _AtractivosListState();
}

class _AtractivosListState extends State<AtractivosList> {
  AtractivosBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Atractivos'),
      ),
      body: StreamBuilder(
          stream: bloc.atractivos,
          builder: (context, AsyncSnapshot<Atractivos_Item> snapshot) {
            if (snapshot.hasData) {
              return buildAtractivosList(snapshot);
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

  @override
  void initState() {
    bloc = AtractivosBloc();
    bloc.getAtractivos();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  Widget buildAtractivosList(AsyncSnapshot<Atractivos_Item> snapshot) {
    return GridView.builder(
        itemCount: snapshot.data.atractivos.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 0.7),
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
                      imageUrl: snapshot.data.atractivos[index].imagen,
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
                      errorWidget: (context, url, error) => Container(
                        color: Colors.grey,
                        child: Center(
                          child: Icon(Icons.error),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              snapshot.data.atractivos[index].nombre,
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

  OpenDetailPage(Atractivos_Item data, int index) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AtractivoDetail(
        idcorredor: data.atractivos[index].idCorredor,
        nombre: data.atractivos[index].nombre,
        descripcion: data.atractivos[index].descripcion,
        lugar: data.atractivos[index].lugar,
        latitud: data.atractivos[index].latitud,
        longitud: data.atractivos[index].longitud,
        imagen: data.atractivos[index].imagen,
      );
    }));
  }
}
