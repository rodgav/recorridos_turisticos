class Danzas_Item {
  bool _error;
  String _mensaje;
  List<Danzas> _danzas;

  Danzas_Item({bool error, String mensaje, List<Danzas> danzas}) {
    this._error = error;
    this._mensaje = mensaje;
    this._danzas = danzas;
  }

  bool get error => _error;
  set error(bool error) => _error = error;
  String get mensaje => _mensaje;
  set mensaje(String mensaje) => _mensaje = mensaje;
  List<Danzas> get danzas => _danzas;
  set danzas(List<Danzas> danzas) => _danzas = danzas;

  Danzas_Item.fromJson(Map<String, dynamic> json) {
    _error = json['error'];
    _mensaje = json['mensaje'];
    if (json['danzas'] != null) {
      _danzas = new List<Danzas>();
      json['danzas'].forEach((v) {
        _danzas.add(new Danzas.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this._error;
    data['mensaje'] = this._mensaje;
    if (this._danzas != null) {
      data['danzas'] = this._danzas.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Danzas {
  String _idFolklore;
  String _idTipodanza;
  String _nombre;
  String _lugar;
  String _imagen;

  Danzas(
      {String idFolklore,
        String idTipodanza,
        String nombre,
        String lugar,
        String imagen}) {
    this._idFolklore = idFolklore;
    this._idTipodanza = idTipodanza;
    this._nombre = nombre;
    this._lugar = lugar;
    this._imagen = imagen;
  }

  String get idFolklore => _idFolklore;
  set idFolklore(String idFolklore) => _idFolklore = idFolklore;
  String get idTipodanza => _idTipodanza;
  set idTipodanza(String idTipodanza) => _idTipodanza = idTipodanza;
  String get nombre => _nombre;
  set nombre(String nombre) => _nombre = nombre;
  String get lugar => _lugar;
  set lugar(String lugar) => _lugar = lugar;
  String get imagen => _imagen;
  set imagen(String imagen) => _imagen = imagen;

  Danzas.fromJson(Map<String, dynamic> json) {
    _idFolklore = json['id_folklore'];
    _idTipodanza = json['id_tipodanza'];
    _nombre = json['nombre'];
    _lugar = json['lugar'];
    _imagen = json['imagen'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_folklore'] = this._idFolklore;
    data['id_tipodanza'] = this._idTipodanza;
    data['nombre'] = this._nombre;
    data['lugar'] = this._lugar;
    data['imagen'] = this._imagen;
    return data;
  }
}
