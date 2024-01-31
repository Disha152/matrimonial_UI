import 'package:flutter/material.dart';

Widget buildRowWithTitle(String title, List<String> items) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Wrap(
          spacing: 8,
          children: items.map((item) => buildChip(item)).toList(),
        ),
      ),
      const SizedBox(height: 16),
    ],
  );
}

Widget buildChip(String label) {
  return Padding(
    padding: const EdgeInsets.all(2.0),
    child: Chip(
      label: Text(label),
      backgroundColor: Colors.blue,
      labelStyle: const TextStyle(color: Colors.white),
    ),
  );
}
