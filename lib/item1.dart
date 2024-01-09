import 'package:flutter/material.dart';

class CustomItem extends StatelessWidget {
  final String title;
  final int exerciseCount;
  final int duration;
  final String imageUrl;
  final Color customColor;

  const CustomItem({
    super.key,
    required this.title,
    required this.exerciseCount,
    required this.duration,
    required this.imageUrl,
    required this.customColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    '$exerciseCount Exercises',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    '$duration Minutes',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '0/$exerciseCount',
                    style: const TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  Container(
                    height: 10,
                    width: 100,
                    decoration: BoxDecoration(
                      color: customColor,
                      borderRadius: BorderRadius.circular(40),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.fill,
                    height: 100,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
