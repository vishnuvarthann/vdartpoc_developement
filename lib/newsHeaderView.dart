import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vdartpoc/Bloccubit_cubit.dart';
import 'package:vdartpoc/EnvUrl/env.dart';
import 'package:vdartpoc/common/colors.dart';
import 'package:vdartpoc/common/dime.dart';

class NewsHeaderView extends StatelessWidget {
  const NewsHeaderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.vbackground,
      appBar: AppBar(
        backgroundColor: AppColors.vheader,
        title: Center(
          child: Text(
            EnvironmentConstant.headline,
            style: TextStyle(
                color: AppColors.vheaderfont,
                fontSize: DimensionValue.fontSize29),
          ),
        ),
      ),
      body: Center(child: BlocBuilder<TodocubitCubit, TodocubitState>(
        builder: (context, state) {
          if (state is TodocubitInitial) {
            context.read<TodocubitCubit>().getData();
            return showLoader();
          } else if (state is TodoLoaded) {
            return ListView.builder(
              itemCount: state.data.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(title: Text(state.data[index].toString())
                      // subtitle: Text(
                      //     state.data[index].articles[index].title.toString()),
                      // trailing: Text(
                      //     state.data[index].articles[index].author.toString()),
                      ),
                );
              },
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      )),
    );
  }

  Widget showLoader() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
