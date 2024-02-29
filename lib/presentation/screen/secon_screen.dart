import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_bloc/logic/cubit/counter_cubit_cubit.dart';

class SecondScreen extends StatefulWidget {
  final String title;
  const SecondScreen({super.key, required this.title});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("you have pushed the buttons this many times"),
            BlocConsumer<CounterCubit, CounterState>(
              listener: (context, state) {
                if (state.wasIncreamented) {
                  Scaffold.of(context).showBottomSheet(
                      (context) => SnackBar(content: Text('data')));
                }
              },
              builder: (context, state) {
                return Text(
                  state.counterValue.toString(),
                  style: Theme.of(context).textTheme.headlineLarge,
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).increament();
                  },
                  tooltip: 'increament',
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 30,
                ),
                FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).decreament();
                  },
                  tooltip: 'decreament',
                  child: const Icon(Icons.minimize),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
