import 'package:flutter/material.dart';
import 'package:reelcult/ui/screens/movie_detail_screen.dart';

class FlipMovieCard extends StatefulWidget {
  final String title;
  final String description;
  final String imageUrl;

  const FlipMovieCard({
    Key? key,
    required this.title,
    required this.description,
    required this.imageUrl,
  }) : super(key: key);

  @override
  State<FlipMovieCard> createState() => _FlipMovieCardState();
}

class _FlipMovieCardState extends State<FlipMovieCard> {
  bool _showFront = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 240,
      margin: const EdgeInsets.only(right: 12),
      child: GestureDetector(
        onTap: () {
          // Navigate to MovieDetailScreen when the card is tapped
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => MovieDetailPage(
                title: widget.title,
                description: widget.description,
                imageUrl: widget.imageUrl,
              ),
            ),
          );
        },
        onLongPress: () {
          // Flip the card when long pressed
          setState(() {
            _showFront = !_showFront;
          });
        },
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return ScaleTransition(scale: animation, child: child);
          },
          child: _showFront ? _buildFrontCard() : _buildBackCard(),
        ),
      ),
    );
  }

  Widget _buildFrontCard() {
    return Card(
      key: const ValueKey('front'),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          widget.imageUrl,
          fit: BoxFit.cover,
          height: 240,
          width: 160,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              height: 240,
              width: 160,
              color: Colors.grey[300],
              child: const Center(
                child: Icon(Icons.error, size: 40),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildBackCard() {
    return Card(
      key: const ValueKey('back'),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        padding: const EdgeInsets.all(12),
        height: 240,
        width: 160,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),
            Expanded(
              child: Text(
                widget.description,
                style: const TextStyle(fontSize: 12),
                overflow: TextOverflow.ellipsis,
                maxLines: 10,
              ),
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Toca para ver detalles",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey[600],
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}