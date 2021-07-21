import 'package:dio/dio.dart';
import 'package:todolist/module/domain/model/item.dart';
import 'package:injectable/injectable.dart';

abstract class GetTodoListRepository {
  Future<List<Item>> call();
}

@Injectable(as: GetTodoListRepository)
class GetTodoListRepositoryImpl implements GetTodoListRepository {
  Dio dio;

  GetTodoListRepositoryImpl(this.dio);

  @override
  Future<List<Item>> call() async {
    final response = await dio.get("https://todo-list-hateoas.herokuapp.com/item?sigla=vin");

    return response.data.map<Item>((item) => Item.fromJson(item)).toList();
  }
}
