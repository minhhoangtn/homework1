import 'package:flutter/material.dart';
import 'package:homework_1/item2.dart';
import 'package:homework_1/item1.dart';
import 'package:homework_1/item_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = <ItemData>[
      const ItemData(
        title: 'Yoga',
        exerciseCount: 3,
        duration: 12,
        imageUrl:
            'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        customColor: Colors.purple,
      ),
      const ItemData(
        title: 'Pilates',
        exerciseCount: 4,
        duration: 14,
        imageUrl:
            'https://img.freepik.com/free-photo/space-background-realistic-starry-night-cosmos-shining-stars-milky-way-stardust-color-galaxy_1258-154643.jpg',
        customColor: Colors.red,
      ),
      const ItemData(
        title: 'ABC',
        exerciseCount: 213,
        duration: 32,
        imageUrl:
            'https://img.freepik.com/free-photo/space-background-realistic-starry-night-cosmos-shining-stars-milky-way-stardust-color-galaxy_1258-154643.jpg',
        customColor: Colors.grey,
      )
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Workouts',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              //ListView thay vì SingleChildScrollView + Column/Row
              //ListView.builder
              //ListView.separated,
              //
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children:
              //         items.map((e) => Item2(imageUrl: e.imageUrl)).toList(),
              //   ),
              // ),
              SizedBox(
                height: 200,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        Item2(imageUrl: items[index].imageUrl),
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 10,
                        ),
                    itemCount: items.length),
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) =>
                      CustomItem(data: items[index]),
                  itemCount: items.length,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.fire_extinguisher),
          label: 'Workouts',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ]),
    );
  }
}
