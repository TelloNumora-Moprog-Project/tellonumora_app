import 'package:flutter/material.dart';

import '../../app_accents.dart';
import '../call_history_screen.dart';

const titleDivider = Divider(height: 24, thickness: 1, color: lineColor);
const divider = Divider(height: 6, thickness: 1, color: lineColor);

class RecentCalls extends StatefulWidget {
  const RecentCalls({super.key});

  @override
  State<RecentCalls> createState() => _RecentCalls();
}

class _RecentCalls extends State<RecentCalls> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.0,
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: widgetColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("RECENT CALLS"),
          titleDivider,
          Calls(),
          divider,
          Calls(),
          divider,
          Calls(),
          divider,
          SizedBox(
            width: double.infinity,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: buttonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text("Show All"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CallHistoryScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text("188 (2)"), Text("Rejected Call")],
        ),
        Text("October 30"),
      ],
    );
  }
}
