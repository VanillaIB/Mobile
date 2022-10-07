import 'package:flutter/material.dart';

class Receita {
  final String image, title, description;
  final int id;
  Receita({
    required this.id,
    required this.image,
    required this.title,
    required this.description,
  });
}

List<Receita> receitas = [
  Receita(
    id: 0,
    title: "Carolina",
    description: dummyText,
    image: "assets/images/carolina.png",
  ),
  Receita(
    id: 1,
    title: "Feijoada",
    description: dummyText,
    image: "assets/images/feijoada.jpg",
  ),
  Receita(
    id: 2,
    title: "Figado Acebolado",
    description: dummyText,
    image: "assets/images/figado_acebolado.jpeg",
  ),
  Receita(
    id: 3,
    title: "Porco Marzipa",
    description: dummyText,
    image: "assets/images/porco_marzipa.jpg",
  ),
  Receita(
    id: 4,
    title: "Strogonoff de Frango",
    description: dummyText,
    image: "assets/images/strogonoff-de-frango.jpg",
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
