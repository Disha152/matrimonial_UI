import 'package:flutter/material.dart';

class ContainerBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Search for matches who speak',
            style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8.0),
          _buildDropdownField('Mother Tongue', ['English', 'Hindi', 'Spanish']),
          const SizedBox(height: 16.0),
          const Text(
            'and belongs to',
            style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8.0),
          _buildDropdownField(
              'Community', ['Community1', 'Community2', 'Community3']),
          const SizedBox(height: 16.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            onPressed: () {
              // Implement login logic
            },
            child: const Text('Let\'s Begin',
                style: TextStyle(
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }

  Widget _buildDropdownField(String label, List<String> options) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 14.0),
        ),
        const SizedBox(height: 8.0),
        DropdownButtonFormField<String>(
          items: options.map((String option) {
            return DropdownMenuItem<String>(
              value: option,
              child: Text(option),
            );
          }).toList(),
          onChanged: (String? value) {
          },
        ),
      ],
    );
  }
}
