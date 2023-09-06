import 'dart:convert';
import 'dart:io';

class ConsoleUtils{
  
  static String lerString(String texto){
    print(texto);
    return lerConsole();
  }

  static String lerConsole(){
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double? lerDouble(String texto,{String valorSaida="S"}){
    print(texto);
    String valor = lerConsole();
    if(valor.toUpperCase()==valorSaida.toUpperCase()){
      exit(0);
    }else if(valor.contains(",")){
      valor = valor.replaceAll(",", ".");
    }

    return double.tryParse(valor);
  }
}