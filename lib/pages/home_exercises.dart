import 'package:fitness_app/all_exercises/bent_bar_seated_cable.dart';
import 'package:fitness_app/all_exercises/overhead_press.dart';
import 'package:fitness_app/all_exercises/push_up.dart';
import 'package:fitness_app/all_exercises/squat.dart';
import 'package:flutter/material.dart';

class ExerciseButtonConfig {
  final Color buttonColor;
  final Color textColor;
  final double fontSize;

// exercise text 
  ExerciseButtonConfig({
    required this.buttonColor,
    required this.textColor,
    required this.fontSize,
  });
}

class ExerciseButton extends StatelessWidget {
  final String text;
  final String imagePath;
  final VoidCallback onPressed;
  final ExerciseButtonConfig config;

  const ExerciseButton({super.key, 
    required this.text,
    required this.imagePath,
    required this.onPressed,
    required this.config,
  });

//  exercises
  @override
  Widget build(BuildContext context) {
    return _buildRoundedContainer(
      width: 360,
      height: 180,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: config.textColor, backgroundColor: config.buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: config.fontSize,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      image: AssetImage(imagePath),
    );
  }

  Widget _buildRoundedContainer({
    required double width,
    required double height,
    required Widget child,
    required ImageProvider<Object> image,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image(
              image: image,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: -4,
              left: 0,
              right: 0,
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}

class HomeExercises extends StatelessWidget {
  const HomeExercises({super.key});

  @override
  Widget build(BuildContext context) {
    final buttonConfig = ExerciseButtonConfig(
      buttonColor: Colors.amber,
      textColor: Colors.black,
      fontSize: 14,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tüm Egzersizler",
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: const Color(0xFF2196F3),
      ),
      backgroundColor: Colors.grey[400],
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ExerciseButton(
                    text: 'Sırtüstü Bisiklet Sürme Egzersizi',
                    imagePath: 'assets/images/14.png',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Squat()), 
                      );
                    },
                    config: buttonConfig,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ExerciseButton(
                    text: 'Klasik Bir Ev Egzersizi: Şınav',
                    imagePath: 'assets/images/15.png',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PushUp()), 
                      );
                    },
                    config: buttonConfig,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ExerciseButton(
                    text: "Squat Egzersizi",
                    imagePath: 'assets/images/16.png',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Squat()),
                      );
                    },
                    config: buttonConfig,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ExerciseButton(
                    text: 'Evde Yürüme Egzersizi',
                    imagePath: 'assets/images/17.png',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const BentBarSeatedCable()),
                      );
                    },
                    config: buttonConfig,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ExerciseButton(
                    text: 'Köprü Egzersizi',
                    imagePath: 'assets/images/18.png',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const OveheadPress()),
                      );
                    },
                    config: buttonConfig,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
