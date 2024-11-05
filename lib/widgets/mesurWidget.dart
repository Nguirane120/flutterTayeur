import 'package:flutter/material.dart';

class Mesurwidget extends StatelessWidget {
  const Mesurwidget({super.key, required this.label, this.value});
  final String label;
  final int? value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Text("$label: ", style: const TextStyle(fontWeight: FontWeight.bold)),
          Expanded(child: Text(value.toString())),
        ],
      ),
    );
    ;
  }
}
