import 'package:flutter/material.dart';
import 'package:recorridos_turisticos/src/Blocs/Corredores_Detail_Bloc.dart';
import 'package:recorridos_turisticos/src/Blocs/Corredores_Detail_Bloc_Provider.dart';
import 'package:recorridos_turisticos/src/Models/Atractivos_Item.dart';
import 'package:recorridos_turisticos/src/UI/Atractivo_Detail.dart';
import 'package:recorridos_turisticos/src/UI/Image_Detail.dart';

class CorredorDetail extends StatefulWidget {
  final id;
  final region;
  final nombre;
  final descripcion;
  final imagen;

  CorredorDetail(
      {this.id, this.region, this.nombre, this.descripcion, this.imagen});

  @override
  _CorredorDetailState createState() => _CorredorDetailState(
      id: id,
      region: region,
      nombre: nombre,
      descripcion: descripcion,
      imagen: imagen);
}

class _CorredorDetailState extends State<CorredorDetail> {
  final id;
  final region;
  final nombre;
  final descripcion;
  final imagen;
  CorredorDetailBloc bloc;

  _CorredorDetailState(
      {this.id, this.region, this.nombre, this.descripcion, this.imagen});

  @override
  void dispose() {
    // TODO: implement dispose
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bloc = CorredorDetailBlocProvider.of(context);
    bloc.getAtractivosCorredor(id);
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
                    Text(region),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                    ),
                    Text(descripcion),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                    ),
                    Text(
                      'Atractivos turisticos',
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                    ),
                    StreamBuilder(
                      stream: bloc.atractivos,
                      builder:
                          (context, AsyncSnapshot<Atractivos_Item> snapshot) {
                        if (snapshot.hasData) {
                          return buildAtractivosList(snapshot);
                        } else if (snapshot.hasError) {
                          return noatractivos();
                        }
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    )
                  ],
                ),
              ))),
    );
  }

  Widget buildAtractivosList(AsyncSnapshot<Atractivos_Item> snapshot) {
    return Expanded(
        child: SizedBox(
      height: 100.0,
      child: GridView.builder(
          itemCount: snapshot.data.atractivos.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 0.7),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                child: Container(
                  padding: EdgeInsets.only(
                      top: 0.0, left: 0.0, right: 0.0, bottom: 0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    image: DecorationImage(
                        image: NetworkImage(
                            snapshot.data.atractivos[index].imagen),
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
          }),
    ));
  }

  Widget noatractivos() {
    return Center(
      child: Text('No hay atractivos'),
    );
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

  void OpenImagenDetail(imagen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ImageDetail(
        imagen: imagen,
      );
    }));
  }
}
