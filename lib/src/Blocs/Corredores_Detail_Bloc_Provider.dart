import 'package:flutter/cupertino.dart';
import 'package:recorridos_turisticos/src/Blocs/Corredores_Detail_Bloc.dart';

class CorredorDetailBlocProvider extends InheritedWidget {
  final CorredorDetailBloc bloc;

  CorredorDetailBlocProvider({Key key, Widget child})
      : bloc = CorredorDetailBloc(),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }

  static CorredorDetailBloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(CorredorDetailBlocProvider)
            as CorredorDetailBlocProvider)
        .bloc;
  }
}
