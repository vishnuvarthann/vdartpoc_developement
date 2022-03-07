import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:vdartpoc/newsHeader.dart';

import 'bloc_observer.dart';

void main() async {
  BlocOverrides.runZoned(
    () => runApp(const TodaysNews()),
    blocObserver: TodoBlocObserver(),
  );
}
