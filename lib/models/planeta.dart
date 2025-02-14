// import 'package:flutter/cupertino.dart';

class Planeta {
  int? id;
  String nome;
  double tamanho;
  double distanciaSol;
  String? apelido;

// Construtor da classe Planeta
  Planeta({
    this.id,
    required this.nome,
    required this.tamanho,
    required this.distanciaSol,
    this.apelido,
  });

// Construtor alternativo
  Planeta.vazio()
      : id = null,
        nome = '',
        tamanho = 0.0,
        distanciaSol = 0.0,
        apelido = null;

  factory Planeta.fromMap(Map<String, dynamic> map) {
    return Planeta(
      id: map['id'],
      nome: map['nome'],
      tamanho: map['tamanho'],
      distanciaSol: map['distanciaSol'],
      apelido: map['apelido'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'tamanho': tamanho,
      'distanciaSol': distanciaSol,
      'apelido': apelido,
    };
  }
}
