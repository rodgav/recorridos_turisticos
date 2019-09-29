class Regiones_Item {
  bool _error;
  String _mensaje;
  List<Regiones> _regiones;

  Regiones_Item({bool error, String mensaje, List<Regiones> regiones}) {
    this._error = error;
    this._mensaje = mensaje;
    this._regiones = regiones;
  }

  bool get error => _error;
  set error(bool error) => _error = error;
  String get mensaje => _mensaje;
  set mensaje(String mensaje) => _mensaje = mensaje;
  List<Regiones> get regiones => _regiones;
  set regiones(List<Regiones> regiones) => _regiones = regiones;

  Regiones_Item.fromJson(Map<String, dynamic> json) {
    _error = json['error'];
    _mensaje = json['mensaje'];
    if (json['regiones'] != null) {
      _regiones = new List<Regiones>();
      json['regiones'].forEach((v) {
        _regiones.add(new Regiones.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this._error;
    data['mensaje'] = this._mensaje;
    if (this._regiones != null) {
      data['regiones'] = this._regiones.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Regiones {
  String _id;
  String _nombre;
  String _descripcion;
  String _imagen;

  Regiones({String id, String nombre, String descripcion, String imagen}) {
    this._id = id;
    this._nombre = nombre;
    this._descripcion = descripcion;
    this._imagen = imagen;
  }

  String get id => _id;
  set id(String id) => _id = id;
  String get nombre => _nombre;
  set nombre(String nombre) => _nombre = nombre;
  String get descripcion => _descripcion;
  set descripcion(String descripcion) => _descripcion = descripcion;
  String get imagen => _imagen;
  set imagen(String imagen) => _imagen = imagen;

  Regiones.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _nombre = json['nombre'];
    _descripcion = json['descripcion'];
    _imagen = json['imagen'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['nombre'] = this._nombre;
    data['descripcion'] = this._descripcion;
    data['imagen'] = this._imagen;
    return data;
  }
}
