import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../Controller/controller.dart';

class CounterView extends StatelessWidget{

  CounterController counter = CounterController();
  CounterView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary,
     title: const Text('Program Increment'),
    ),
     body: Center(
      child: Column(
       mainAxisAlignment: MainAxisAlignment.center, children: <Widget> [
         Text('You have pushed the button this many times:',
         ),
         Obx(() => Text('${counter.counter}',
           style: Theme.of(context).textTheme.headlineMedium,
         )),
        ],
       ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),

    );
  }
}