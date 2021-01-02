import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function  addTx;
  final title = TextEditingController();
  final amount = TextEditingController();
         NewTransaction( this.addTx);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
//                    onChanged: (val) {
//                      inputTiltle= val;
//
//                    },
              controller: title,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
//                    onChanged: (val) {
//                      amount=val;
//                    },
              controller: amount,
            ),
            FlatButton(
              onPressed: () {
                addTx(title.text,double.parse(amount.text));
              },
              child: Text(
                'Add Transaction',
              ),
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
