//import 'package:bidirectional_scroll_view/bidirectional_scroll_view.dart';
import 'package:bidirectional_scroll_view/bidirectional_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:recorridos_turisticos/src/Blocs/FechasFestivas_Bloc.dart';
import 'package:recorridos_turisticos/src/Models/FechasFestivas_Item.dart';

class FechasFestivasList extends StatefulWidget {
  @override
  _FechasFestivasListState createState() => _FechasFestivasListState();
}

class _FechasFestivasListState extends State<FechasFestivasList> {
  FechasFestivasBloc bloc;

  @override
  void initState() {
    bloc = FechasFestivasBloc();
    bloc.getFechasFestivas();
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
        title: Text('Fechas festivas'),
      ),
      body: StreamBuilder(
          stream: bloc.fechasfestivas,
          builder: (context, AsyncSnapshot<FechasFestivas_Item> snapshot) {
            if (snapshot.hasData) {
              return buildFechasFestivasList(snapshot);
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

  Widget buildFechasFestivasList(AsyncSnapshot<FechasFestivas_Item> snapshot) {
    return BidirectionalScrollViewPlugin(
        //scrollDirection: Axis.vertical,
        child: DataTable(
            columns: <DataColumn>[
              DataColumn(
                  label: Text('FECHA'), numeric: false, tooltip: 'FECHAS'),
              DataColumn(
                  label: Text('NOMBRE'), numeric: false, tooltip: 'NOMBRE'),
              DataColumn(
                  label: Text('LUGAR'), numeric: false, tooltip: 'LUGAR'),
              DataColumn(
                  label: Text('PROVINCIA'),
                  numeric: false,
                  tooltip: 'PROVINCIA'),
            ],
            rows: snapshot.data.fechasfestivas
                .map((fecha) => DataRow(cells: <DataCell>[
                      DataCell(Text(fecha.fecha)),
                      DataCell(Text(fecha.nombre)),
                      DataCell(Text(fecha.lugar)),
                      DataCell(Text(fecha.provincia))
                    ]))
                .toList()));
  }
}
