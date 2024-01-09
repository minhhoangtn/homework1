import 'package:flutter/material.dart';
import 'package:homework_1/item1.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Workouts',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CustomItem(
                        title: 'Yoga',
                        exerciseCount: 3,
                        duration: 12,
                        imageUrl:
                            'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                        customColor: Colors.purple,
                      ),
                      SizedBox(height: 10),
                      CustomItem(
                        title: 'Pilates',
                        exerciseCount: 4,
                        duration: 14,
                        imageUrl:
                            'https://img.freepik.com/free-photo/space-background-realistic-starry-night-cosmos-shining-stars-milky-way-stardust-color-galaxy_1258-154643.jpg',
                        customColor: Colors.red,
                      ),
                      SizedBox(height: 10),
                      CustomItem(
                        title: 'Full Body',
                        exerciseCount: 10,
                        duration: 30,
                        imageUrl:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzd-mchfk8QwVmNE4zW9gMRYoeXPyPi31Hbw&usqp=CAU',
                        customColor: Colors.yellow,
                      ),
                      CustomItem(
                        title: 'Yoga',
                        exerciseCount: 3,
                        duration: 12,
                        imageUrl:
                            'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                        customColor: Colors.purple,
                      ),
                      SizedBox(height: 10),
                      CustomItem(
                        title: 'Yoga',
                        exerciseCount: 3,
                        duration: 12,
                        imageUrl:
                            'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                        customColor: Colors.purple,
                      ),
                      SizedBox(height: 10),
                      CustomItem(
                        title: 'Yoga',
                        exerciseCount: 3,
                        duration: 12,
                        imageUrl:
                            'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                        customColor: Colors.purple,
                      ),
                      SizedBox(height: 10),
                      CustomItem(
                        title: 'Yoga',
                        exerciseCount: 3,
                        duration: 12,
                        imageUrl:
                            'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                        customColor: Colors.purple,
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
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
