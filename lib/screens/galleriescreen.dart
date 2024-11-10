import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'https://www.sudquotidien.sn/wp-content/uploads/2024/07/DIOMAYE-FAYE-7-1080x900.png',
      'https://laviesenegalaise.com/wp-content/uploads/2024/04/Diomaye-Faye.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTADGddybDg70U42DXOMDG2-EpJmJRohWhtiw&s',
      'https://www.proxi-sape.com/wp-content/uploads/2021/10/WhatsApp-Image-2021-10-20-at-11.25.51.jpeg',
      'https://cdn0.mariages.net/usr/4/2/2/8/cfb_2x_1483680.jpg',
      "https://www.proxi-sape.com/wp-content/uploads/2021/10/WhatsApp-Image-2021-10-19-at-21.58.53.jpeg",
      "https://s.alicdn.com/@sc04/kf/H6d8ebc3604bc450fb969d68c39a518b48.jpg_300x300.jpg",
      "https://www.proxi-sape.com/wp-content/uploads/2021/10/WhatsApp-Image-2021-10-20-at-11.34.23.jpeg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReRQP3OjUR0iMkA1tB-cs8Tk7hC8JaPgzZuQ&s",
      "https://pictures-senegal.jijistatic.com/224411_NjIwLTc2OC1hMTJmZDdmZDc1.webp",
      "https://www.proxi-sape.com/wp-content/uploads/2021/10/WhatsApp-Image-2021-10-19-at-21.52.57.jpeg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0GfZwkGGezmNxkZw6OMnznMcebpIOxTHU4Q&s"
    ];

    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Nombre de colonnes dans la grille
          crossAxisSpacing: 10.0, // Espace horizontal entre les images
          mainAxisSpacing: 10.0, // Espace vertical entre les images
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Action lorsqu'une image est sélectionnée
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Tenue ${index + 1}'),
                    content: Image.network(images[index]),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Fermer'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  images[index],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
