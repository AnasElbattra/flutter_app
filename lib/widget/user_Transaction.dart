import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../model/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: '2fid',
      title: 'new shoe',
      amount: 120,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2cid',
      title: 'new shirt',
      amount: 150,
      date: DateTime.now(),
    ),
  ];

  void _newAddTransaction(String title, double txAmount) {
    final newTx = Transaction(
      id: 'ffff',
      title: title,
      amount: txAmount,
      date: DateTime.now(),
    );
    setState(() {
      _userTransaction.add(newTx);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_newAddTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}
