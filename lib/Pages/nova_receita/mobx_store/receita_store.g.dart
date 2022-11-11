// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receita_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ReceitaStore on _ReceitaStore, Store {
  Computed<String>? _$idComputed;

  @override
  String get id => (_$idComputed ??=
          Computed<String>(() => super.id, name: '_ReceitaStore.id'))
      .value;
  Computed<String>? _$titleComputed;

  @override
  String get title => (_$titleComputed ??=
          Computed<String>(() => super.title, name: '_ReceitaStore.title'))
      .value;
  Computed<String>? _$descriptionComputed;

  @override
  String get description =>
      (_$descriptionComputed ??= Computed<String>(() => super.description,
              name: '_ReceitaStore.description'))
          .value;
  Computed<String>? _$categoryComputed;

  @override
  String get category =>
      (_$categoryComputed ??= Computed<String>(() => super.category,
              name: '_ReceitaStore.category'))
          .value;
  Computed<String>? _$imgIdComputed;

  @override
  String get imgId => (_$imgIdComputed ??=
          Computed<String>(() => super.imgId, name: '_ReceitaStore.imgId'))
      .value;
  Computed<bool>? _$formularioValidoComputed;

  @override
  bool get formularioValido => (_$formularioValidoComputed ??= Computed<bool>(
          () => super.formularioValido,
          name: '_ReceitaStore.formularioValido'))
      .value;

  late final _$_idAtom = Atom(name: '_ReceitaStore._id', context: context);

  @override
  String? get _id {
    _$_idAtom.reportRead();
    return super._id;
  }

  @override
  set _id(String? value) {
    _$_idAtom.reportWrite(value, super._id, () {
      super._id = value;
    });
  }

  late final _$_titleAtom =
      Atom(name: '_ReceitaStore._title', context: context);

  @override
  String? get _title {
    _$_titleAtom.reportRead();
    return super._title;
  }

  @override
  set _title(String? value) {
    _$_titleAtom.reportWrite(value, super._title, () {
      super._title = value;
    });
  }

  late final _$_descriptionAtom =
      Atom(name: '_ReceitaStore._description', context: context);

  @override
  String? get _description {
    _$_descriptionAtom.reportRead();
    return super._description;
  }

  @override
  set _description(String? value) {
    _$_descriptionAtom.reportWrite(value, super._description, () {
      super._description = value;
    });
  }

  late final _$_categoryAtom =
      Atom(name: '_ReceitaStore._category', context: context);

  @override
  String? get _category {
    _$_categoryAtom.reportRead();
    return super._category;
  }

  @override
  set _category(String? value) {
    _$_categoryAtom.reportWrite(value, super._category, () {
      super._category = value;
    });
  }

  late final _$_imgIdAtom =
      Atom(name: '_ReceitaStore._imgId', context: context);

  @override
  String? get _imgId {
    _$_imgIdAtom.reportRead();
    return super._imgId;
  }

  @override
  set _imgId(String? value) {
    _$_imgIdAtom.reportWrite(value, super._imgId, () {
      super._imgId = value;
    });
  }

  late final _$_ReceitaStoreActionController =
      ActionController(name: '_ReceitaStore', context: context);

  @override
  dynamic atualizarId({required String id}) {
    final _$actionInfo = _$_ReceitaStoreActionController.startAction(
        name: '_ReceitaStore.atualizarId');
    try {
      return super.atualizarId(id: id);
    } finally {
      _$_ReceitaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic atualizarTitle({required String title}) {
    final _$actionInfo = _$_ReceitaStoreActionController.startAction(
        name: '_ReceitaStore.atualizarTitle');
    try {
      return super.atualizarTitle(title: title);
    } finally {
      _$_ReceitaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic atualizarDescription({required String description}) {
    final _$actionInfo = _$_ReceitaStoreActionController.startAction(
        name: '_ReceitaStore.atualizarDescription');
    try {
      return super.atualizarDescription(description: description);
    } finally {
      _$_ReceitaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic atualizarCategory({required String category}) {
    final _$actionInfo = _$_ReceitaStoreActionController.startAction(
        name: '_ReceitaStore.atualizarCategory');
    try {
      return super.atualizarCategory(category: category);
    } finally {
      _$_ReceitaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic atualizarIMGID({required String imgId}) {
    final _$actionInfo = _$_ReceitaStoreActionController.startAction(
        name: '_ReceitaStore.atualizarIMGID');
    try {
      return super.atualizarIMGID(imgId: imgId);
    } finally {
      _$_ReceitaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
id: ${id},
title: ${title},
description: ${description},
category: ${category},
imgId: ${imgId},
formularioValido: ${formularioValido}
    ''';
  }
}
