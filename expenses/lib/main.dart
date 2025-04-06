
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

main()=> runApp(const ExpensesApp());


class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget {

  final _transcations = [

    Transaction(id: 'T1',
     title: 'Novo Tenis de Corrida',
     value: 310.76,
     date: DateTime.now()),
     Transaction(id: 'T2',
     title: 'Conta de Luz',
     value: 211.30,
     date: DateTime.now()),
  ];

   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas Pessoais'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            child: Card(
              color: Colors.blue,
              child: Text('Grafico'),
              elevation: 5,
            ),
          ),
          Card(
            child: Text('Lista de Transações'),
          )
        ],
      )
    );
  }
}