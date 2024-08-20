import 'package:flutter/material.dart';

class Studentcard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('Student Name'),
        trailing: IconButton(
          icon: const Icon(Icons.edit),
          onPressed: () {},
        ),
      ),
    );
  }
}