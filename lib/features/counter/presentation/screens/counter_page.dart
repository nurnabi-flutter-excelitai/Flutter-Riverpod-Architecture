
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/counter_providers.dart';


class CounterApp extends StatelessWidget {


  _incrementCounter( WidgetRef ref) {
    ref.read(counterProvider).incrementValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Counter App',),
        centerTitle: true,
      ),
      body: Consumer(
        builder: (context,ref,child){
          final counter = ref.watch(counterProvider);
          final title = ref.watch(titleText);
          return  Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(title.toString()),
                  Text('${counter.value}')

                ],
              ));

        },

      ),


      floatingActionButton: Consumer(
        builder: (context, ref, child) {
          return FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () => _incrementCounter(ref),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          );
        },
      ),

    );
  }
}