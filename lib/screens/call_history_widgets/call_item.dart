import 'package:flutter/material.dart';

// Widget untuk satu baris riwayat panggilan
class CallItem extends StatelessWidget {
  final String number;
  final String type;
  final String date;

  const CallItem({
    super.key,
    required this.number,
    required this.type,
    required this.date,
  }); // constructor

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.call),
      title: Text(number),
      subtitle: Text(type),
      trailing: Text(date),
    );
  }
}
