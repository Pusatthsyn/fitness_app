import 'package:fitness_app/all_exercises/barfiks.dart';
import 'package:fitness_app/all_exercises/bench_press.dart';
import 'package:fitness_app/all_exercises/bent_bar_seated_cable.dart';
import 'package:fitness_app/all_exercises/deadlift.dart';
import 'package:fitness_app/all_exercises/lunge.dart';
import 'package:fitness_app/all_exercises/mekik.dart';
import 'package:fitness_app/all_exercises/overhead_press.dart';
import 'package:fitness_app/all_exercises/plank.dart';
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
      width: 180,
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

class ExercisesPage extends StatelessWidget {
  const ExercisesPage({super.key});

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
                    text: 'Squat',
                    imagePath: 'assets/images/1.png',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Squat()), 
                      );
                    },
                    config: buttonConfig,
                  ),
                  const SizedBox(width: 16),
                  ExerciseButton(
                    text: 'Deadlift',
                    imagePath: 'assets/images/2.png',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Deadlift()), 
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
                    text: 'Plank',
                    imagePath: 'assets/images/3.png',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Plank()), 
                      );
                    },
                    config: buttonConfig,
                  ),
                  const SizedBox(width: 16),
                  ExerciseButton(
                    text: 'Bench Pres',
                    imagePath: 'assets/images/4.png',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const BenchPress()),
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
                    text: "Push-up( Şınav )",
                    imagePath: 'assets/images/5.png',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PushUp()),
                      );
                    },
                    config: buttonConfig,
                  ),
                  const SizedBox(width: 16),
                  ExerciseButton(
                    text: 'Barfiks',
                    imagePath: 'assets/images/6.png',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Barfiks()),
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
                    text: 'Bent Bar Seated Cable Row',
                    imagePath: 'assets/images/7.png',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const BentBarSeatedCable()),
                      );
                    },
                    config: buttonConfig,
                  ),
                  const SizedBox(width: 16),
                  ExerciseButton(
                    text: 'Mekik',
                    imagePath: 'assets/images/8.png',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Mekik()),
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
                    text: 'Ovehead Press',
                    imagePath: 'assets/images/9.png',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const OveheadPress()),
                      );
                    },
                    config: buttonConfig,
                  ),
                  const SizedBox(width: 16),
                  ExerciseButton(
                    text: 'Lunge',
                    imagePath: 'assets/images/10.png',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Lunge()),
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
