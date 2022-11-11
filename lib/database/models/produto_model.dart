import '../DB.dart';
import '../../Models/Receita.dart';

// ignore: must_be_immutable
class ReceitaModel extends Receita {
  ReceitaModel(
      {receitaID,
      required title,
      required description,
      required category,
      required image})
      : super(
          receitaID: receitaID,
          category: category,
          description: description,
          image: image,
          title: title,
        );

  factory ReceitaModel.fromMap(Map<String, Object?> map) {
    return ReceitaModel(
        receitaID: (map[RECEITAS_COLUMN_RECEITAID] as num).toInt(),
        title: map[RECEITAS_COLUMN_TITLE],
        category: map[RECEITAS_COLUMN_CATEGORY],
        image: 0,
        description: map[RECEITAS_COLUMN_DESCRIPTION]);
  }
}
