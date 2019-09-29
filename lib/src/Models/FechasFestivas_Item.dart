class FechasFestivas_Item {
  bool _error;
  String _mensaje;
  List<Fechasfestivas> _fechasfestivas;

  FechasFestivas_Item(
      {bool error, String mensaje, List<Fechasfestivas> fechasfestivas}) {
    this._error = error;
    this._mensaje = mensaje;
    this._fechasfestivas = fechasfestivas;
  }

  bool get error => _error;
  set error(bool error) => _error = error;
  String get mensaje => _mensaje;
  set mensaje(String mensaje) => _mensaje = mensaje;
  List<Fechasfestivas> get fechasfestivas => _fechasfestivas;
  set fechasfestivas(List<Fechasfestivas> fechasfestivas) =>
      _fechasfestivas = fechasfestivas;

  FechasFestivas_Item.fromJson(Map<String, dynamic> json) {
    _error = json['error'];
    _mensaje = json['mensaje'];
    if (json['fechasfestivas'] != null) {
      _fechasfestivas = new List<Fechasfestivas>();
      json['fechasfestivas'].forEach((v) {
        _fechasfestivas.add(new Fechasfestivas.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this._error;
    data['mensaje'] = this._mensaje;
    if (this._fechasfestivas != null) {
      data['fechasfestivas'] =
          this._fechasfestivas.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Fechasfestivas {
  String _idRegion;
  String _fecha;
  String _nombre;
  String _lugar;
  String _provincia;

  Fechasfestivas(
      {String idRegion,
        String fecha,
        String nombre,
        String lugar,
        String provincia}) {
    this._idRegion = idRegion;
    this._fecha = fecha;
    this._nombre = nombre;
    this._lugar = lugar;
    this._provincia = provincia;
  }

  String get idRegion => _idRegion;
  set idRegion(String idRegion) => _idRegion = idRegion;
  String get fecha => _fecha;
  set fecha(String fecha) => _fecha = fecha;
  String get nombre => _nombre;
  set nombre(String nombre) => _nombre = nombre;
  String get lugar => _lugar;
  set lugar(String lugar) => _lugar = lugar;
  String get provincia => _provincia;
  set provincia(String provincia) => _provincia = provincia;

  Fechasfestivas.fromJson(Map<String, dynamic> json) {
    _idRegion = json['id_region'];
    _fecha = json['fecha'];
    _nombre = json['nombre'];
    _lugar = json['lugar'];
    _provincia = json['provincia'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_region'] = this._idRegion;
    data['fecha'] = this._fecha;
    data['nombre'] = this._nombre;
    data['lugar'] = this._lugar;
    data['provincia'] = this._provincia;
    return data;
  }
}
