import 'package:fitness_app/data/exercise.dart';
import 'package:fitness_app/data/workout_category_list.dart';
import 'package:fitness_app/widgets/exercise_card_widget.dart';
import 'package:fitness_app/widgets/workout_category_widget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  static String routeName = "/MyHomePage";

  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (value) {
          _index = value;
          setState(() {});
        },
        selectedIndex: _index,
        destinations: [
          NavigationDestination(
              icon: _index == 0
                  ? const Icon(Icons.category)
                  : const Icon(Icons.category_outlined),
              label: "Category"),
          NavigationDestination(
              icon: _index == 1
                  ? const Icon(Icons.favorite)
                  : const Icon(Icons.favorite_outline),
              label: "Favorite"),
        ],
      ),
      appBar: AppBar(
        title: Text(
          _index == 0 ? "Salon Egzersizleri" : "Favori Egzersizler",
          style: const TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            _index == 0
                ? Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) => WorkoutCategoryWidget(
                        workoutCategoryModel: workoutCategoryList[index],
                      ),
                      itemCount: workoutCategoryList.length,
                    ),
                  )
                : exerciseList
                        .where((element) => element.isFavourite)
                        .toList()
                        .isEmpty
                    ? Center(
                        child: Text(
                          "Lütfen favori egzersizlerinizi işaretleyin!",
                          style: TextStyle(
                              fontSize: 24,
                              color: colorScheme.onSurface,
                              fontStyle: FontStyle.italic),
                          textAlign: TextAlign.center,
                        ),
                      )
                    : Expanded(
                        child: ListView.separated(
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              height: 20,
                            );
                          },
                          itemBuilder: (context, index) => ExerciseCardWidget(
                              exerciseModel: exerciseList
                                  .where((element) => element.isFavourite)
                                  .toList()[index]),
                          itemCount: exerciseList
                              .where((element) => element.isFavourite)
                              .toList()
                              .length,
                        ),
                      ),
          ],
        ),
      ),
    );
  }
}
