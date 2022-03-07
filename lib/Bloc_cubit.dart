import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vdartpoc/Bloc_state.dart';

class TodoCubit extends Cubit<TodoState> {
  TodoCubit() : super(TodoInitial());
}
