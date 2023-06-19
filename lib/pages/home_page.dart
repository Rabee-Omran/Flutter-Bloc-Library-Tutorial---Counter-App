import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc.dart';
import '../widgets/buttons_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Bloc"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Counter Value is :',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (_, state) {
                return Text(
                  "${state.counter}",
                  style: const TextStyle(color: Colors.blueGrey, fontSize: 30),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: const ButtonsWidget(),
    );
  }
}
