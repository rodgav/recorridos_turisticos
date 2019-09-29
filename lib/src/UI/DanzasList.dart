import 'package:flutter/material.dart';
import 'package:recorridos_turisticos/src/Blocs/Danzas_Bloc.dart';
import 'package:recorridos_turisticos/src/Models/Danzas_Item.dart';

class DanzasList extends StatefulWidget {
  @override
  _DanzasListState createState() => _DanzasListState();
}

class _DanzasListState extends State<DanzasList> {
  DanzasBloc bloc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Atractivos'),
      ),
      body: StreamBuilder(
          stream: bloc.danzas,
          builder: (context, AsyncSnapshot<Danzas_Item> snapshot) {
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
  @override
  void initState() {
    bloc = DanzasBloc();
    bloc.getDanzas();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  Widget buildDanzasList(AsyncSnapshot<Danzas_Item> snapshot) {
    return GridView.builder(
        itemCount: snapshot.data.danzas.length,
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
                        image: NetworkImage(snapshot.data.danzas[index].imagen),
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
                                snapshot.data.danzas[index].nombre,
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
