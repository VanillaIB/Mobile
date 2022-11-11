import 'package:mobx/mobx.dart';

///flutter packages pub run build_runner watch
part 'receita_store.g.dart';

class ReceitaStore = _ReceitaStore with _$ReceitaStore;

abstract class _ReceitaStore with Store {
// #region id
  @observable
  String? _id;

  @computed
  String get id => _id ?? "";

  @action
  atualizarId({required String id}) {
    _id = id;
  }
// #endregion

// #region title
  @observable
  String? _title;

  @computed
  String get title => _title ?? "";

  @action
  atualizarTitle({required String title}) {
    _title = title;
  }
// #endregion

// #region description
  @observable
  String? _description;

  @computed
  String get description => _description ?? "";

  @action
  atualizarDescription({required String description}) {
    _description = description;
  }
// #endregion

// #region category
  @observable
  String? _category;

  @computed
  String get category => _category ?? "";

  @action
  atualizarCategory({required String category}) {
    _category = category;
  }
// #endregion

// #region img id

  @observable
  String? _imgId;

  @computed
  String get imgId => _imgId ?? "";

  @action
  atualizarIMGID({required String imgId}) {
    _imgId = imgId;
  }
// #endregion

  @computed
  bool get formularioValido => title.isNotEmpty && description.isNotEmpty;
}
