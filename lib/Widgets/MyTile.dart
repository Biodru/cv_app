import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  final String name;
  final String subtitle;

  const MyTile({
    this.name,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      subtitle: Text(subtitle),
    );
  }
}
