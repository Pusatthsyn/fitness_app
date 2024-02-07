import 'package:fitness_app/weekly_plans/first_week.dart';
import 'package:fitness_app/weekly_plans/fourth_week.dart';
import 'package:fitness_app/weekly_plans/second_week.dart';
import 'package:fitness_app/weekly_plans/third_week.dart';
import 'package:flutter/material.dart';

class WeeklyButtonConfig {
  final Color buttonColor;
  final Color textColor;
  final double fontSize;

  WeeklyButtonConfig({
    required this.buttonColor,
    required this.textColor,
    required this.fontSize,
  });
}

class WeeklyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final WeeklyButtonConfig config;

  const WeeklyButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.config,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildRoundedContainer(
      width: 360,
      height: 100,
      onPressed: onPressed,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: config.fontSize,
            fontStyle: FontStyle.italic,
            color: config.textColor,
          ),
        ),
      ),
    );
  }

  Widget _buildRoundedContainer({
    required double width,
    required double height,
    required VoidCallback onPressed,
    required Widget child,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: config.buttonColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: onPressed,
          child: child,
        ),
      ),
    );
  }
}

class WeeklyPlan extends StatelessWidget {
  const WeeklyPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonConfig = WeeklyButtonConfig(
      buttonColor: Colors.amber,
      textColor: Colors.black,
      fontSize: 14,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Haftalık Planlar",
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.blue,
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
                  WeeklyButton(
                    text: '1. Hafta Egzersizleri',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const FirstWeek()),
                      );
                    },
                    config: buttonConfig,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WeeklyButton(
                    text: '2. Hafta Egzersizleri',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SecondWeek()),
                      );
                    },
                    config: buttonConfig,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WeeklyButton(
                    text: '3. Hafta Egzersizleri',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ThirddWeek()),
                      );
                    },
                    config: buttonConfig,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WeeklyButton(
                    text: '4. Hafta Egzersizleri',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const FourthdWeek()),
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

