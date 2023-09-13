class NameException implements Exception {
  String error() => "Nome invalido";

  @override
  String toString() {
    return "NameException: ${error()}";
  }
}
