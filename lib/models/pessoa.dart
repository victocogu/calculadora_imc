class Pessoa{
  String _nome ="";
  double _peso = 0;
  double _altura = 0;

  Pessoa(String nome){
    _nome = nome;
  }

  void setNome(String nome){
    _nome = nome;
  }

  String getNome(){
    return _nome;
  }

  void setPeso(double peso){
    _peso = peso;
  }

  double getPeso(){
    return _peso;
  }

  void setAltura(double altura){
    _altura = altura;
  }

  double getAltura(){
    return _altura;
  }

  double calculaIMC(){
    return _peso/(_altura*_altura);
  }

  String getClassificacaoIMC(){
    double valorIMC=calculaIMC();
    String classificacao="";
    if (valorIMC<16){
      classificacao="Magreza grave";
    }else if(valorIMC<17){
      classificacao="Magreza moderada";
    }else if(valorIMC<18.5){
      classificacao="Magreza leve";
    }else if(valorIMC<25){
      classificacao="Saudável";
    }else if(valorIMC<30){
      classificacao="Sobrepeso";
    }else if(valorIMC<35){
      classificacao="Obesidade Grau I";
    }else if(valorIMC<40){
      classificacao="Obesidade Grau II (severa)";
    }else {
      classificacao="Obesidade Grau III (mórbida)";
    }
    return "IMC: ${valorIMC.toStringAsFixed(2)} - Classificação: $classificacao";
  }

}