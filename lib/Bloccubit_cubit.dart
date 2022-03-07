import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:vdartpoc/BlocRepositoryImpl.dart';

part 'Bloccubit_state.dart';

class TodocubitCubit extends Cubit<TodocubitState> {
  final TodoRepository _todoRepository;

  TodocubitCubit(this._todoRepository) : super(TodocubitInitial());

  Future<void> getData() async {
    try {
      List<Map<String, dynamic>> data = await _todoRepository.fetchData();
      emit(TodoLoaded(data: data));
    } on Exception {
      emit(const TodoError(
          message: "Could not fetch the list, please try again later!"));
    }
  }
}
