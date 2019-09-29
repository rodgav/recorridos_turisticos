import 'package:flutter/material.dart';
import 'package:recorridos_turisticos/src/Blocs/Imagenes_Bloc.dart';
import 'package:recorridos_turisticos/src/Models/Imagenes_Item.dart';

class ImagenesList extends StatefulWidget {
  @override
  _ImagenesListState createState() => _ImagenesListState();
}

class _ImagenesListState extends State<ImagenesList> {
  ImagenesBloc bloc;
  @override
  void initState() {
    bloc = ImagenesBloc();
    bloc.getImagenes();
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
        title: Text('Imagenes'),
      ),
      body: StreamBuilder(
          stream: bloc.imagenes,
          builder: (context, AsyncSnapshot<Imagenes_Item> snapshot) {
            if (snapshot.hasData) {
              return buildImagenesList(snapshot);
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

  Widget buildImagenesList(AsyncSnapshot<Imagenes_Item> snapshot) {
    return GridView.builder(
        itemCount: snapshot.data.imagenes.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 0.7),
        itemBuilder: (BuildContext context, int index) {
          return
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
                        image: NetworkImage(snapshot.data.imagenes[index].imagen),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Color.fromARGB(100, 0, 0, 0), BlendMode.hardLight)),
                  ),
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                snapshot.data.imagenes[index].nombre,
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
              onTap: () {

              },
            );
        });
  }
}
