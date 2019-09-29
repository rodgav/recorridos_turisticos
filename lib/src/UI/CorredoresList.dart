import 'package:flutter/material.dart';
import 'package:recorridos_turisticos/src/Blocs/Corredores_Bloc.dart';
import 'package:recorridos_turisticos/src/Blocs/Corredores_Detail_Bloc_Provider.dart';
import 'package:recorridos_turisticos/src/Models/Corredores_Item.dart';
import 'package:recorridos_turisticos/src/UI/Corredor_Detail.dart';

class CorredoresList extends StatefulWidget {
  @override
  _CorredorListState createState() => _CorredorListState();
}

class _CorredorListState extends State<CorredoresList> {
  CorredoresBloc bloc;

  @override
  void initState() {
    bloc = CorredoresBloc();
    bloc.getDanzas();
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
        title: Text('Corredores'),
      ),
      body: StreamBuilder(
          stream: bloc.danzas,
          builder: (context, AsyncSnapshot<Corredores_Item> snapshot) {
            if (snapshot.hasData) {
              return buildCorredoresList(snapshot);
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

  Widget buildCorredoresList(AsyncSnapshot<Corredores_Item> snapshot) {
    return GridView.builder(
        itemCount: snapshot.data.corredores.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, childAspectRatio: 2),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              child: Container(
                padding: EdgeInsets.only(
                    top: 10.0, left: 10.0, right: 10.0, bottom: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                      image:
                          NetworkImage(snapshot.data.corredores[index].imagen),
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
                              snapshot.data.corredores[index].nombre,
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

  OpenDetailPage(Corredores_Item data, int index) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return CorredorDetailBlocProvider(
        child: CorredorDetail(
          id: data.corredores[index].id,
          region: data.corredores[index].region,
          nombre: data.corredores[index].nombre,
          descripcion: data.corredores[index].descripcion,
          imagen: data.corredores[index].imagen,
        ),
      );
    }));
  }
}
