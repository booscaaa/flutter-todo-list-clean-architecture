import 'package:todolist/module/domain/model/item.dart';
import 'package:todolist/module/domain/usecase/get_todo_list_usecase.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

@injectable
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final GetTodoListUseCase _getTodoListUseCase;
  final form = GlobalKey<FormState>();

  _HomeControllerBase(this._getTodoListUseCase);

  @observable
  ObservableList<Item> _itens = <Item>[].asObservable();

  @observable
  bool _loading = false;

  @computed
  bool get loading => _loading;

  @computed
  List<Item> get itens => this._itens.toList();

  @action
  getTodoList() async {
    // DialogWarning.show(message: "opaaaaaaaaaaa");
    this._loading = true;
    this._itens = (await this._getTodoListUseCase()).asObservable();


    print(this._itens);

    this._loading = false;
  }
}
