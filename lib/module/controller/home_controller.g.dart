// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<bool>? _$loadingComputed;

  @override
  bool get loading => (_$loadingComputed ??= Computed<bool>(() => super.loading,
          name: '_HomeControllerBase.loading'))
      .value;
  Computed<List<Item>>? _$itensComputed;

  @override
  List<Item> get itens =>
      (_$itensComputed ??= Computed<List<Item>>(() => super.itens,
              name: '_HomeControllerBase.itens'))
          .value;

  final _$_itensAtom = Atom(name: '_HomeControllerBase._itens');

  @override
  ObservableList<Item> get _itens {
    _$_itensAtom.reportRead();
    return super._itens;
  }

  @override
  set _itens(ObservableList<Item> value) {
    _$_itensAtom.reportWrite(value, super._itens, () {
      super._itens = value;
    });
  }

  final _$_loadingAtom = Atom(name: '_HomeControllerBase._loading');

  @override
  bool get _loading {
    _$_loadingAtom.reportRead();
    return super._loading;
  }

  @override
  set _loading(bool value) {
    _$_loadingAtom.reportWrite(value, super._loading, () {
      super._loading = value;
    });
  }

  final _$getTodoListAsyncAction =
      AsyncAction('_HomeControllerBase.getTodoList');

  @override
  Future getTodoList() {
    return _$getTodoListAsyncAction.run(() => super.getTodoList());
  }

  @override
  String toString() {
    return '''
loading: ${loading},
itens: ${itens}
    ''';
  }
}
