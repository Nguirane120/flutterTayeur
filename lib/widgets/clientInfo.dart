import 'package:flutter/material.dart';

class Clientinfo extends StatelessWidget {
   Clientinfo({super.key, required this.label, required this.value});
  final String label;
 final  String value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Text("$label: ", style: const TextStyle(fontWeight: FontWeight.bold)),
          Expanded(child: Text(value)),
        ],
      ),
    );
    ;
  }
}
