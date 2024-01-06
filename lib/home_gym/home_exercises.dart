import 'package:flutter/material.dart';

class HomeExercises extends StatefulWidget {
  const HomeExercises({super.key});

  @override
  State<HomeExercises> createState() => _HomeExercisesState();
}

class _HomeExercisesState extends State<HomeExercises> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ev Egzersizleri"),
      ),
    );
  }
}// home 