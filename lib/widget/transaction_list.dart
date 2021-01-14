import 'package:flutter/material.dart';
import './transaction_item.dart';
import '../model/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function _deleteTr;

  const TransactionList(this.transactions, this._deleteTr);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 430,
        child: transactions.isEmpty
            ? LayoutBuilder(builder: (context, constraints) {
                return Column(
                  children: [
                    Text(
                      'No transaction added yet!',
                      style: Theme.of(context).textTheme.title,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: constraints.maxHeight * .6,
                        child: Image.asset(
                          'assets/image/waiting.png',
                          fit: BoxFit.cover,
                        )),
                  ],
                );
              })
            : ListView.builder(
                itemBuilder: (cxt, index) {
                  return TransactionItem(transaction: transactions[index], deleteTr: _deleteTr);
                },
                itemCount: transactions.length,
              ));
  }
}
