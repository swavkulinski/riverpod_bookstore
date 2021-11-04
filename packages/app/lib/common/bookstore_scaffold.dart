import 'package:flutter/material.dart';

class BookstoreScaffold extends StatelessWidget {
  final String titleLabel;
  final Widget child;
  final Widget? floatingActionButton;
  const BookstoreScaffold(
      {Key? key, required this.titleLabel, required this.child, this.floatingActionButton})
      : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(titleLabel),
        ),
        body: child,
        floatingActionButton: floatingActionButton,
      );
}
