import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vdartpoc/BlocRepositoryImpl.dart';

import 'package:vdartpoc/newsHeaderView.dart';
import 'package:vdartpoc/Bloccubit_cubit.dart';

class TodaysNews extends StatelessWidget {
  const TodaysNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Todays News",
      home: BlocProvider(
        create: (context) => TodocubitCubit(TodoRepositoryImpl()),
        child: const NewsHeaderView(),
      ),
    );
  }
}
