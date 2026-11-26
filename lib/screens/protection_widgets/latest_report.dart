import 'package:flutter/material.dart';

class LatestReport extends StatelessWidget {
  const LatestReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          child: Container(
            height: 450,
            width: 450,
            padding: EdgeInsets.fromLTRB(2, 6, 2, 6),
            child: Column(
              children: [
                SizedBox(width: 1, height: 14),
                Text("Last 30 Days Report", style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                )),
                SizedBox(width: 1, height: 14),
                Info(amount: "5,961,282", desc: "NUMBER REPORTED FOR FRAUD"),
                SizedBox(width: 1, height: 14),
                Info(amount: "77,148,489", desc: "POTENTIAL SMS FRAUD DETECTED AND FILTERED"),
                SizedBox(width: 1, height: 14),
                Info(amount: "111,665,319", desc: "POTENTIAL PHONE CALL FRAUD PREVENTED")
              ],
            ),
          ),
        )
      ],
    );
  }
}

class Info extends StatelessWidget {
  final String amount;
  final String desc;

  const Info({
    super.key, 
    required this.amount, 
    required this.desc
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      child: Container(
        height: 100,
        width: 400,
        padding: EdgeInsets.fromLTRB(2, 6, 2, 6),
        color: Colors.grey.shade200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(amount, style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25
            )),
            SizedBox(width: 1, height: 5),
            Text(desc, style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 15
            ))
          ],
        ),
      ),
    );
  }
}