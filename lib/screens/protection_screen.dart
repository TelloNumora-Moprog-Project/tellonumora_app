import 'package:flutter/material.dart';
import 'package:tellonumora_app/screens/protection_widgets/latest_report.dart';
import 'package:tellonumora_app/screens/protection_widgets/protection_status.dart';

class ProtectionScreen extends StatelessWidget {
  const ProtectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsGeometry.fromLTRB(15, 3, 0, 0),
                  child: Text(
                    "Protection and Security", 
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20
                    )
                  ),
                )            
              ],
            ),
            SizedBox(width: 1, height: 15),
            ProtectionStatus(),
            SizedBox(width: 1, height: 15),
            LatestReport()
          ],
        )
      )
    );
  }
}
