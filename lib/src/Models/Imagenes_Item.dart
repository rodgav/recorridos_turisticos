class Imagenes_Item {
  bool _error;
  String _mensaje;
  List<Imagenes> _imagenes;

  Imagenes_Item({bool error, String mensaje, List<Imagenes> imagenes}) {
    this._error = error;
    this._mensaje = mensaje;
    this._imagenes = imagenes;
  }

  bool get error => _error;
  set error(bool error) => _error = error;
  String get mensaje => _mensaje;
  set mensaje(String mensaje) => _mensaje = mensaje;
  List<Imagenes> get imagenes => _imagenes;
  set imagenes(List<Imagenes> imagenes) => _imagenes = imagenes;

  Imagenes_Item.fromJson(Map<String, dynamic> json) {
    _error = json['error'];
    _mensaje = json['mensaje'];
    if (json['imagenes'] != null) {
      _imagenes = new List<Imagenes>();
      json['imagenes'].forEach((v) {
        _imagenes.add(new Imagenes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this._error;
    data['mensaje'] = this._mensaje;
    if (this._imagenes != null) {
      data['imagenes'] = this._imagenes.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Imagenes {
  String _nombre;
  String _imagen;

  Imagenes({String nombre, String imagen}) {
    this._nombre = nombre;
    this._imagen = imagen;
  }

  String get nombre => _nombre;
  set nombre(String nombre) => _nombre = nombre;
  String get imagen => _imagen;
  set imagen(String imagen) => _imagen = imagen;

  Imagenes.fromJson(Map<String, dynamic> json) {
    _nombre = json['nombre'];
    _imagen = json['imagen'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nombre'] = this._nombre;
    data['imagen'] = this._imagen;
    return data;
  }
}
