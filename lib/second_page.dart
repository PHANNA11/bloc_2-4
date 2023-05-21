import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/bloc/count_bloc.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CountBloc, CountState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Second Page'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '${state.count}',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: () {
                  context.read<CountBloc>().add(DecrementEvent());
                },
                heroTag: 'fffg',
                tooltip: 'dDecrement',
                child: const Icon(Icons.remove),
              ),
              FloatingActionButton(
                onPressed: () {
                  context.read<CountBloc>().add(IncrementEvent());
                },
                heroTag: 'fff',
                tooltip: 'dIncrement',
                child: const Icon(Icons.add),
              ),
            ],
          ),
        );
      },
    );
  }
}
