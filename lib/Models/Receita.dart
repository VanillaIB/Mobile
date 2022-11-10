import 'package:equatable/equatable.dart';

class Receita extends Equatable {
  final String image, title, description, category;
  late int receitaID;
  Receita({
    required this.receitaID,
    required this.image,
    required this.title,
    required this.description,
    required this.category,
  });

  @override
  List<Object?> get props => [receitaID];
}

List<Receita> receitas = [
  Receita(
    receitaID: 0,
    title: "Carolina",
    description: dummyText,
    image: "assets/images/carolina.png",
    category: 'Doces',
  ),
  Receita(
    receitaID: 1,
    title: "Feijoada",
    description: dummyText,
    image: "assets/images/feijoada.jpg",
    category: '',
  ),
  Receita(
    receitaID: 2,
    title: "Figado Acebolado",
    description: dummyText,
    image: "assets/images/figado_acebolado.jpeg",
    category: '',
  ),
  Receita(
    receitaID: 3,
    title: "Porco Marzipa",
    description: dummyText,
    image: "assets/images/porco_marzipa.jpg",
    category: '',
  ),
  Receita(
    receitaID: 4,
    title: "Strogonoff de Frango",
    description: dummyText,
    image: "assets/images/strogonoff-de-frango.jpg",
    category: '',
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
