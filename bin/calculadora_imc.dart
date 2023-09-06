import 'package:calculadora_imc/Classes/console_utils.dart';
import 'package:calculadora_imc/models/pessoa.dart';

void main(List<String> arguments) {
  print("Calculadora de IMC");
  String nome = ConsoleUtils.lerString("Informe o nome da pessoa:");
  Pessoa pessoa = Pessoa(nome);
  double? peso;
  double? altura;
  
  do{
    peso=ConsoleUtils.lerDouble("Informe o peso ou S para sair:",valorSaida: "S");
    (peso==null || peso<=0)? print("Peso inválido!"):"";
  }while (peso == null || peso<=0);
  pessoa.setPeso(peso);

  do{
    altura=ConsoleUtils.lerDouble("Informe a altura ou S para sair:",valorSaida: "S");
    (altura==null || altura<=0)? print("Altura inválida!"):"";
  }while (altura == null || altura <=0);
  pessoa.setAltura(altura);

  print(pessoa.getClassificacaoIMC());
}
