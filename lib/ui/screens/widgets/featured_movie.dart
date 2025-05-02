import 'package:flutter/material.dart';
import 'emotion_tag.dart';

class FeaturedMovie extends StatelessWidget {
  const FeaturedMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF3F3B8A).withOpacity(0.8),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          // Imagen de la película
Expanded(
  flex: 2,
  child: Container(
    margin: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      image: const DecorationImage(
        image: NetworkImage('https://th.bing.com/th?id=OIF.yMca0Rim0SrsAbQMm7%2fjjw&w=248&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
        fit: BoxFit.cover,
      ),
    ),
  ),
),

          // Detalles de la película
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Película Destacada: Cónclave',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    '	Edward Berger • 2024 • 120 min',
                    style: TextStyle(fontSize: 12, color: Colors.white70),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Después de la muerte del papa a consecuencia de un ataque cardíaco, el colegio cardenalicio, bajo el liderazgo del cardenal decano Thomas Lawrence, se reúne en cónclave para elegir a su sucesor.',
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Emociones:',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const EmotionTag(text: 'Conmovedora'),
                      const SizedBox(width: 8),
                      const EmotionTag(text: 'Inspiradora'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}