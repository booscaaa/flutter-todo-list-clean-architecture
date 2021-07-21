import 'package:todolist/module/data/repository/get_todo_list_repository.dart';
import 'package:todolist/module/domain/model/item.dart';
import 'package:injectable/injectable.dart';

abstract class GetTodoListUseCase {
  Future<List<Item>> call();
}

@Injectable(as: GetTodoListUseCase)
class GetTodoListUseCaseImpl implements GetTodoListUseCase {
  final GetTodoListRepository _getTodoListRepository;

  GetTodoListUseCaseImpl(this._getTodoListRepository);

  @override
  Future<List<Item>> call() async {
    return await _getTodoListRepository();
  }
}
