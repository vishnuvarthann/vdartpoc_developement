part of 'Bloccubit_cubit.dart';

abstract class TodocubitState extends Equatable {
  const TodocubitState();

  @override
  List<Object> get props => [];
}

class TodocubitInitial extends TodocubitState {}

class TodoLoaded extends TodocubitState {
  final List<Map<String, dynamic>> data;
  const TodoLoaded({required this.data});
}

class TodoError extends TodocubitState {
  final String message;
  const TodoError({required this.message});
}
