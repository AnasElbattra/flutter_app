import 'package:flutter/material.dart';
import '../model/transaction.dart';
import 'package:intl/intl.dart';
class TransactionItem extends StatelessWidget {
  const TransactionItem({
    Key key,
    @required this.transaction,
    @required Function deleteTr,
  }) : _deleteTr = deleteTr, super(key: key);
                 
  final Transaction transaction;
  final Function _deleteTr;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin:  EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 5,
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: FittedBox(
              child: Text('\£${transaction.amount}'),
            ),
          ),
        ),
        title: Text(
          transaction.title,
          style: Theme.of(context).textTheme.title,
        ),
        subtitle: Text(
          DateFormat.yMMMd().format(transaction.date),
        ),
        trailing: MediaQuery.of(context).size.width > 360
            ? FlatButton.icon(
          textColor: Theme.of(context).errorColor,
          onPressed: () =>
              _deleteTr(transaction.id),
          icon: const Icon(Icons.delete),
          label: Text('delete'),
        )
            : IconButton(
          icon: const Icon(Icons.delete),
          color: Theme.of(context).errorColor,
          onPressed: () {
            return _deleteTr(transaction.id);
          },
        ),
      ),
    );
  }
}
