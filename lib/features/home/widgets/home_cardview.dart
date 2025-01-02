<<<<<<< HEAD
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
=======
>>>>>>> 1aa782aaedd99cb7d4dc3255fb3c52b793f04d52
import 'package:flutter/material.dart';
import 'package:tubes2_uas_kelompok1/data/breeds/responsesmodel/breeds_responses_model.dart';

class HomeCard extends StatelessWidget {
  final BreedsResponsesModel image;
  final VoidCallback onFavoritePressed;
  final VoidCallback onLikePressed;
<<<<<<< HEAD
  const HomeCard(
      {super.key,
      required this.image,
      required this.onFavoritePressed,
      required this.onLikePressed});
=======
  const HomeCard({super.key, required this.image, required this.onFavoritePressed, required this.onLikePressed});
>>>>>>> 1aa782aaedd99cb7d4dc3255fb3c52b793f04d52

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            _buildTextSection(),
            const SizedBox(height: 10),
            _buildActionSection(),
          ],
        ),
      ),
<<<<<<< HEAD
    );
  }

=======
    ); 
  }


>>>>>>> 1aa782aaedd99cb7d4dc3255fb3c52b793f04d52
  Widget _buildTextSection() {
    return Column(
      children: [
        Text(
          "Nama Kucing : ${image.name}",
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          "Deskripsi Kucing : ${image.description}",
          style: const TextStyle(
            fontSize: 16,
          ),
<<<<<<< HEAD
        )
=======
        ),
>>>>>>> 1aa782aaedd99cb7d4dc3255fb3c52b793f04d52
      ],
    );
  }

  Widget _buildActionSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
<<<<<<< HEAD
          onPressed: onFavoritePressed,
          icon: const Icon(Icons.favorite),
        ),
        IconButton(
          onPressed: onLikePressed,
=======
          onPressed: onFavoritePressed, 
          icon: const Icon(Icons.favorite),
        ),
        IconButton(
          onPressed: onLikePressed, 
>>>>>>> 1aa782aaedd99cb7d4dc3255fb3c52b793f04d52
          icon: const Icon(Icons.thumb_up),
        ),
      ],
    );
  }
}
<<<<<<< HEAD
=======

>>>>>>> 1aa782aaedd99cb7d4dc3255fb3c52b793f04d52
