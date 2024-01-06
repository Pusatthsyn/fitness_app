import 'package:flutter/material.dart';

class ExerciseButtonConfig {
  final Color buttonColor;
  final Color textColor;
  final double fontSize;

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
                    text: 'Halter Kaldırma',
                    imagePath: 'assets/images/ex1.png',
                    onPressed: () {
                      // Button 1 pressed
                    },
                    config: buttonConfig,
                  ),
                  const SizedBox(width: 16),
                  ExerciseButton(
                    text: 'Kas Uzatma',
                    imagePath: 'assets/images/ex2.png',
                    onPressed: () {
                      // Button 2 pressed
                    },
                    config: buttonConfig,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ExerciseButton(
                    text: 'Çömelme',
                    imagePath: 'assets/images/ex3.png',
                    onPressed: () {
                      // Button 3 pressed
                    },
                    config: buttonConfig,
                  ),
                  const SizedBox(width: 16),
                  ExerciseButton(
                    text: 'Göğüs Pres',
                    imagePath: 'assets/images/ex4.png',
                    onPressed: () {
                      // Button 4 pressed
                    },
                    config: buttonConfig,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ExerciseButton(
                    text: 'Baş Üştü Pres',
                    imagePath: 'assets/images/ex5.png',
                    onPressed: () {
                      // Button 5 pressed
                    },
                    config: buttonConfig,
                  ),
                  const SizedBox(width: 16),
                  ExerciseButton(
                    text: 'Kafatası Kırıcı',
                    imagePath: 'assets/images/ex6.png',
                    onPressed: () {
                      // Button 6 pressed
                    },
                    config: buttonConfig,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ExerciseButton(
                    text: 'Sırt Çekme',
                    imagePath: 'assets/images/ex7.png',
                    onPressed: () {
                      // Button 5 pressed
                    },
                    config: buttonConfig,
                  ),
                  const SizedBox(width: 16),
                  ExerciseButton(
                    text: 'Koşu Bandı',
                    imagePath: 'assets/images/ex8.png',
                    onPressed: () {
                      // Button 6 pressed
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
