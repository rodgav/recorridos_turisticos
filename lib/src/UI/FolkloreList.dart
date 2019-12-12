import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:recorridos_turisticos/src/Blocs/Folklore_Bloc.dart';
import 'package:recorridos_turisticos/src/Models/Folklore_Item.dart';
import 'package:recorridos_turisticos/src/UI/Folklore_Detail.dart';

class FolkloreList extends StatefulWidget {
  @override
  _FolkloreListState createState() => _FolkloreListState();
}

class _FolkloreListState extends State<FolkloreList> {
  FolkloreBloc bloc;
  @override
  void initState() {
    bloc = FolkloreBloc();
    bloc.getFolklore();
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
        title: Text('Folklore'),
      ),
      body: StreamBuilder(
          stream: bloc.folklore,
          builder: (context, AsyncSnapshot<Folklore_Item> snapshot) {
            if (snapshot.hasData) {
              return buildFolkloreList(snapshot);
            } else if (snapshot.hasError) {
              return Center(
                child: Text('${snapshot.error.toString()} Error'),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }

  Widget buildFolkloreList(AsyncSnapshot<Folklore_Item> snapshot) {
    return GridView.builder(
        itemCount: snapshot.data.folklore.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, childAspectRatio: 2),
        itemBuilder: (BuildContext context, int index) {
          return
            GestureDetector(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                child: Container(
                  padding: EdgeInsets.only(
                      top: 0.0, left: 0.0, right: 0.0, bottom: 0.0),
                  child: Stack(
                    children: <Widget>[
                      CachedNetworkImage(
                        imageUrl: snapshot.data.folklore[index].imagen,
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
                                snapshot.data.folklore[index].nombre,
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
  OpenDetailPage(Folklore_Item data, int index) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return FolkloreDetail(
        id: data.folklore[index].id,
        nombre: data.folklore[index].nombre,
        descripcion: data.folklore[index].descripcion,
        imagen: data.folklore[index].imagen,
      );
    }));
  }
}
