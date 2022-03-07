import 'package:vdartpoc/Model/newsapi.dart';
import 'package:vdartpoc/service.dart';

class TodoRepositoryImpl implements TodoRepository {
  TodoService service = TodoService();

  @override
  Future<List<Map<String, dynamic>>> fetchData() {
    return service.fetchData();
  }
}

abstract class TodoRepository {
  Future<List<Map<String, dynamic>>> fetchData();
}
