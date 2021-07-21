import 'package:todolist/module/data/repository/get_todo_list_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'widget_test.mocks.dart';
import 'package:dio/dio.dart';

@GenerateMocks([Dio])
void main() {
  final dio = MockDio();
  final getTodoListRepository = GetTodoListRepositoryImpl(dio);
  test('Counter increments smoke test', () async {
    when(dio.get(any)).thenAnswer(
        (_) async => Response(
            requestOptions: RequestOptions(path: "/item"),
            statusCode: 200,
            data: [{"nome": "tarefa 1"}]));

    final itens = await getTodoListRepository();

    expect(true, itens.length == 0);
  });
}
