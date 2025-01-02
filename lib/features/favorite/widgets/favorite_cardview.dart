import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tubes2_uas_kelompok1/data/favorite/responsesmodel/favorite_responses_model_get.dart';

class FavoriteCard extends StatelessWidget {
  final FavoritesResponsesModelGet favorite;
  final VoidCallback onDeleted;
  const FavoriteCard({super.key, required this.favorite, required this.onDeleted});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.brown,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Favorite Id : ${favorite.id}",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
             Text(
              "Tanggal Favorite : ${favorite.createdAt}",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        ),
    );
  }
}

