import 'package:flutter/material.dart';

import 'call_history_widgets/call_item.dart';

class CallHistoryScreen extends StatelessWidget {
  const CallHistoryScreen({super.key});

  // Data dummy sementara, nanti diganti riwayat panggilan asli dari HP
  static const calls = [
    {'number': '188', 'type': 'Rejected', 'date': 'October 30'},
    {'number': '0812-3456-7890', 'type': 'Missed', 'date': 'October 29'},
    {'number': '0857-1122-3344', 'type': 'Incoming', 'date': 'October 28'},
    {'number': '0813-9988-7766', 'type': 'Outgoing', 'date': 'October 27'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Call History')),
      body: ListView(
        // Ubah setiap data panggilan menjadi widget CallItem
        children: calls.map<Widget>((Map<String, String> call) {
          return CallItem(
            number: call['number']!,
            type: call['type']!,
            date: call['date']!,
          );
        }).toList(),
      ),
    );
  }
}
