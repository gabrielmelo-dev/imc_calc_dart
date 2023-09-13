class Pessoa {
  late String _nome;
  late double _peso;
  late double _altura;

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }

  double get peso => _peso;

  double get altura => _altura;

  set altura(double value) {
    _altura = value;
  }

  set peso(double value) {
    _peso = value;
  }

}
