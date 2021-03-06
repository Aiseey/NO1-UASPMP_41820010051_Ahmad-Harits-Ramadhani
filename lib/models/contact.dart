class Contact {
 late int _id;
 late String _name;
 late String _phone;

  // konstruktor versi 1
  Contact(this._name, this._phone);

  // konstruktor versi 2: konversi dari Map ke Contact
  Contact.fromMap(Map<String, dynamic> map) {
    _id = map['id'];
    _name = map['name'];
    _phone = map['phone'];
  }
  //getter dan setter (mengambil dan mengisi data kedalam object)
  // getter
  int get id => _id;
  // ignore: unnecessary_getters_setters
  String get name => _name;
  // ignore: unnecessary_getters_setters
  String get phone => _phone;

  // setter
  // ignore: unnecessary_getters_setters
  set name(String value) {
    _name = value;
  }

  // ignore: unnecessary_getters_setters
  set phone(String value) {
    _phone = value;
  }

  // konversi dari Contact ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = name;
    map['phone'] = phone;
    return map;
  }
}
