import 'package:flutter/material.dart';
import 'package:reelcult/ui/screens/movie_detail_screen.dart';
import 'ui/screens/movie_detail/movie_detail_screen.dart';

class MovieCard extends StatelessWidget {
  final String title;
  
  const MovieCard({super.key, required this.title});
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => MovieDetailPage(title: title, description: '', imageUrl: '',))
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 120,
              height: 180,
              decoration: BoxDecoration(
                color: const Color(0xFF5955B3),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}