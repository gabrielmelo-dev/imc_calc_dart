// ignore_for_file: avoid_print

import 'package:imc_calc_dart/models/pessoa.dart';
import 'package:imc_calc_dart/util/console_utils.dart';

void execute() {
  final Pessoa pessoa = Pessoa();

  pessoa.nome = lerString(string: "Digite o seu nome:");
  pessoa.peso = lerDouble(string: "Digite o seu peso(KG):")!;
  pessoa.altura = lerDouble(string: "Digite o sua altura(Metro):")!;

  imcResult(pessoa);
}

double calculateIMC(double peso, double altura) {
  return double.parse((peso / (altura * altura)).toStringAsFixed(2));
}

void imcResult(Pessoa pessoa) {

  final imc = calculateIMC(pessoa.peso, pessoa.altura);
  print("${pessoa.nome} o seu IMC atual é $imc e se encaixa na seguinte classificação:");

  if (imc < 16) {
    print("Magreza grave");
  } else if (imc >= 16 && imc < 17) {
    print("Magreza moderada");
  } else if (imc >= 17 && imc < 18.5) {
    print("Magreza leve");
  } else if (imc >= 18.5 && imc < 25) {
    print("Saudavel");
  } else if (imc >= 25 && imc < 30) {
    print("Sobrepeso");
  } else if (imc >= 30 && imc < 35) {
    print("Obesidade Grau I");
  } else if (imc >= 35 && imc < 40) {
    print("Obesidade Grau II");
  } else if (imc >= 40) {
    print("Obesidade Grau III");
  }
}
