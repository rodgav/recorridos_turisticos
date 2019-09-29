class Folklore_Item {
  bool _error;
  String _mensaje;
  List<Folklore> _folklore;

  Folklore_Item({bool error, String mensaje, List<Folklore> folklore}) {
    this._error = error;
    this._mensaje = mensaje;
    this._folklore = folklore;
  }

  bool get error => _error;
  set error(bool error) => _error = error;
  String get mensaje => _mensaje;
  set mensaje(String mensaje) => _mensaje = mensaje;
  List<Folklore> get folklore => _folklore;
  set folklore(List<Folklore> folklore) => _folklore = folklore;

  Folklore_Item.fromJson(Map<String, dynamic> json) {
    _error = json['error'];
    _mensaje = json['mensaje'];
    if (json['folklore'] != null) {
      _folklore = new List<Folklore>();
      json['folklore'].forEach((v) {
        _folklore.add(new Folklore.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this._error;
    data['mensaje'] = this._mensaje;
    if (this._folklore != null) {
      data['folklore'] = this._folklore.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Folklore {
  String _id;
  String _nombre;
  String _descripcion;
  String _imagen;

  Folklore({String id, String nombre, String descripcion, String imagen}) {
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

  Folklore.fromJson(Map<String, dynamic> json) {
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
