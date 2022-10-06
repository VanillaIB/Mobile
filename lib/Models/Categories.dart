import 'package:flutter/material.dart';

class Category {
  final int id;
  final String category;
  Category({
    required this.id,
    required this.category,
  });
}

List<Category> categories = [
  Category(
    id: 1,
    category: "Doces",
  ),
  Category(
    id: 2,
    category: "Salgados",
  ),
  Category(
    id: 3,
    category: "Bolos",
  ),
  Category(
    id: 4,
    category: "Carnes",
  )
];
