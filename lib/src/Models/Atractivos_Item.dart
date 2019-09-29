class Atractivos_Item {
  bool _error;
  String _mensaje;
  List<Atractivos> _atractivos;

  Atractivos_Item({bool error, String mensaje, List<Atractivos> atractivos}) {
    this._error = error;
    this._mensaje = mensaje;
    this._atractivos = atractivos;
  }

  bool get error => _error;
  set error(bool error) => _error = error;
  String get mensaje => _mensaje;
  set mensaje(String mensaje) => _mensaje = mensaje;
  List<Atractivos> get atractivos => _atractivos;
  set atractivos(List<Atractivos> atractivos) => _atractivos = atractivos;

  Atractivos_Item.fromJson(Map<String, dynamic> json) {
    _error = json['error'];
    _mensaje = json['mensaje'];
    if (json['atractivos'] != null) {
      _atractivos = new List<Atractivos>();
      json['atractivos'].forEach((v) {
        _atractivos.add(new Atractivos.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this._error;
    data['mensaje'] = this._mensaje;
    if (this._atractivos != null) {
      data['atractivos'] = this._atractivos.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Atractivos {
  String _idCorredor;
  String _nombre;
  String _descripcion;
  String _lugar;
  String _latitud;
  String _longitud;
  String _imagen;

  Atractivos(
      {String idCorredor,
        String nombre,
        String descripcion,
        String lugar,
        String latitud,
        String longitud,
        String imagen}) {
    this._idCorredor = idCorredor;
    this._nombre = nombre;
    this._descripcion = descripcion;
    this._lugar = lugar;
    this._latitud = latitud;
    this._longitud = longitud;
    this._imagen = imagen;
  }

  String get idCorredor => _idCorredor;
  set idCorredor(String idCorredor) => _idCorredor = idCorredor;
  String get nombre => _nombre;
  set nombre(String nombre) => _nombre = nombre;
  String get descripcion => _descripcion;
  set descripcion(String descripcion) => _descripcion = descripcion;
  String get lugar => _lugar;
  set lugar(String lugar) => _lugar = lugar;
  String get latitud => _latitud;
  set latitud(String latitud) => _latitud = latitud;
  String get longitud => _longitud;
  set longitud(String longitud) => _longitud = longitud;
  String get imagen => _imagen;
  set imagen(String imagen) => _imagen = imagen;

  Atractivos.fromJson(Map<String, dynamic> json) {
    _idCorredor = json['id_corredor'];
    _nombre = json['nombre'];
    _descripcion = json['descripcion'];
    _lugar = json['lugar'];
    _latitud = json['latitud'];
    _longitud = json['longitud'];
    _imagen = json['imagen'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_corredor'] = this._idCorredor;
    data['nombre'] = this._nombre;
    data['descripcion'] = this._descripcion;
    data['lugar'] = this._lugar;
    data['latitud'] = this._latitud;
    data['longitud'] = this._longitud;
    data['imagen'] = this._imagen;
    return data;
  }
}
