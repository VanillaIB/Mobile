import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Carolina",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/carolina.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Feijoada",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/feijoada.jpg",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Figado Acebolado",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/figado_acebolado.jpeg",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Porco Marzipa",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/porco_marzipa.jpg",
      color: Color.fromARGB(255, 241, 99, 22)),
  Product(
      id: 5,
      title: "Strogonoff de Frango",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/strogonoff-de-frango.jpg",
      color: Color(0xFFFB7883)),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
