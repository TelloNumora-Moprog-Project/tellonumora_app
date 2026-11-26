import 'package:flutter/material.dart';
import 'package:tellonumora_app/app_accents.dart';

class ProtectionStatus extends StatefulWidget {
  const ProtectionStatus({super.key});

  @override
  State<ProtectionStatus> createState() => _ProtectionStatus();
}

class _ProtectionStatus extends State<ProtectionStatus> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          child: Container(
            height: 250,
            width: 450,
            padding: EdgeInsets.fromLTRB(2, 6, 2, 6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRect(
                  child: Align(
                    heightFactor: 0.5,
                    alignment: AlignmentGeometry.topCenter,
                    child: SizedBox(
                      width: 120,
                      height: 120,
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: AnimatedRotation(
                          turns: -90/360, 
                          duration: Duration.zero,
                          child: CircularProgressIndicator(
                            value: .15,
                            color: Colors.red,
                            backgroundColor: Colors.grey,
                          ),
                        ),
                      )
                    )
                  )
                ),
                SizedBox(height: 15, width: 1),
                Text("PROTECTION LEVEL", style: TextStyle(
                  fontWeight: FontWeight.w400
                )),
                Text("Low", style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 20
                )),
                SizedBox(height: 10, width: 1),
                Text(
                  "Enable protection agains scam calls and messages.",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 15, width: 1),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )
                  ),
                  onPressed: null, 
                  child: Text("Start Protection", style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255)
                  ))
                )
              ]
            )
          ),
        )
      ],
    );
  }
}