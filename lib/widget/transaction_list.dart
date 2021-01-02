import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../model/transaction.dart';
class TransactionList extends StatelessWidget {
      final List<Transaction> transactions;

  const TransactionList( this.transactions) ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((t) {
        return Card(
          child: Row(
            children: [
              Container(
                margin:
                EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple, width: 2)),
                child: Text(
                  t.amount.toString(),
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.purple),
                ),
                padding: EdgeInsets.all(10),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    t.title,
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    DateFormat('y/MMM/dd').format(t.date),
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
