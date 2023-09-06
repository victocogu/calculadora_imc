import 'package:test/test.dart';
import 'package:calculadora_imc/models/pessoa.dart';

void main() {
   test('calculaIMC', () {
    Pessoa pessoa=Pessoa("Teste");
    pessoa.setPeso(70);
    pessoa.setAltura(1.7);
    expect(pessoa.calculaIMC().toStringAsFixed(2), "24.22");
  }); 
}
 