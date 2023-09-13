class ValueException implements Exception {
  String error() => "Valor invalido";

  @override
  String toString() {
    return "ValueException: ${error()}";
  }
}
