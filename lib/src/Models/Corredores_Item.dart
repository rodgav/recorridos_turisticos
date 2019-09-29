class Corredores_Item {
  bool _error;
  String _mensaje;
  List<Corredores> _corredores;

  Corredores_Item({bool error, String mensaje, List<Corredores> corredores}) {
    this._error = error;
    this._mensaje = mensaje;
    this._corredores = corredores;
  }

  bool get error => _error;
  set error(bool error) => _error = error;
  String get mensaje => _mensaje;
  set mensaje(String mensaje) => _mensaje = mensaje;
  List<Corredores> get corredores => _corredores;
  set corredores(List<Corredores> corredores) => _corredores = corredores;

  Corredores_Item.fromJson(Map<String, dynamic> json) {
    _error = json['error'];
    _mensaje = json['mensaje'];
    if (json['corredores'] != null) {
      _corredores = new List<Corredores>();
      json['corredores'].forEach((v) {
        _corredores.add(new Corredores.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this._error;
    data['mensaje'] = this._mensaje;
    if (this._corredores != null) {
      data['corredores'] = this._corredores.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Corredores {
  String _id;
  String _region;
  String _nombre;
  String _descripcion;
  String _imagen;

  Corredores(
      {String id,
        String region,
        String nombre,
        String descripcion,
        String imagen}) {
    this._id = id;
    this._region = region;
    this._nombre = nombre;
    this._descripcion = descripcion;
    this._imagen = imagen;
  }

  String get id => _id;
  set id(String id) => _id = id;
  String get region => _region;
  set region(String region) => _region = region;
  String get nombre => _nombre;
  set nombre(String nombre) => _nombre = nombre;
  String get descripcion => _descripcion;
  set descripcion(String descripcion) => _descripcion = descripcion;
  String get imagen => _imagen;
  set imagen(String imagen) => _imagen = imagen;

  Corredores.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _region = json['region'];
    _nombre = json['nombre'];
    _descripcion = json['descripcion'];
    _imagen = json['imagen'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['region'] = this._region;
    data['nombre'] = this._nombre;
    data['descripcion'] = this._descripcion;
    data['imagen'] = this._imagen;
    return data;
  }
}
