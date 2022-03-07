import 'package:equatable/equatable.dart';
import 'package:vdartpoc/Model/newsapi.dart';

abstract class TodoState extends Equatable {
  const TodoState();

  @override
  List<Object> get props => [];
}

class TodoInitial extends TodoState {}

class TodoLoaded extends TodoState {
  final List<NewsApi?> data;
  const TodoLoaded({required this.data});
}

class TodoError extends TodoState {
  final String message;
  const TodoError({required this.message});
}
