import 'package:flutter/material.dart';

class MovieInTheaters extends StatelessWidget {
  final String title;
  
  const MovieInTheaters({super.key, required this.title});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFF5955B3),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        const Text(
          'Cine: CineReelCult',
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
      ],
    );
  }
}