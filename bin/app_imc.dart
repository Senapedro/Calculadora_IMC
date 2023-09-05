import 'dart:io';

void main(List<String> arguments) {
  print('Qual é o seu nome?');
  String? nome = stdin.readLineSync();

  print('Qual é a sua idade?');
  String? idade = stdin.readLineSync();

  print('Qual é a sua altura?');
  String? inputAltura = stdin.readLineSync();
  double? altura;
  if (inputAltura != null) {
    altura = double.parse(inputAltura);
  }

  print('Qual é o seu peso?');
  String? inputPeso = stdin.readLineSync();
  double? peso;
  if (inputPeso != null) {
    peso = double.parse(inputPeso);
  }

  if (nome != null && idade != null && altura != null && peso != null) {
    double imc = peso / (altura * altura);
    print(
        'Olá meu nome é $nome, tenho $idade anos, a minha altura é $altura e meu peso é $peso. \n'
        'Considerando a minha altura e meu peso atual o meu IMC é de $imc.');
  } else {
    print('Alguma informação não foi preenchida corretamente.');
  }
  
}


