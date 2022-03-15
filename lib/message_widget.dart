
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_demo/models/message.dart';
import 'package:intl/intl.dart';

class MessageWidget extends StatelessWidget {
  final Message message;

  MessageWidget(this.message);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 1, top: 5, right: 1, bottom: 2),
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[350]!,
                          blurRadius: 2.0,
                          offset: Offset(0, 1.0))
                    ],
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.white),
                child: MaterialButton(
                    disabledTextColor: Colors.black87,
                    padding: EdgeInsets.only(left: 18),
                    onPressed: null,
                    child: Wrap(
                      children: <Widget>[
                        Container(
                            child: Row(
                              children: [
                                Text(message.text),
                  message.id.isNotEmpty ? Text(message.id) : Container()
                              ],
                            )),
                      ],
                    ))),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    DateFormat('yyyy-MM-dd, kk:mma').format(message.date).toString(),
                    style: TextStyle(color: Colors.grey),
                  )),
            ),
          ],
        ));
  }
}