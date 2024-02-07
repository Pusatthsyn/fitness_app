import 'package:flutter/material.dart';

class BenchPress extends StatelessWidget {
  const BenchPress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bench Press"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.amber, width: 4.0),
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Image.asset(
                'assets/gifs/bench_press.gif',
                width: MediaQuery.of(context).size.width,
                height: 400,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "   Deadlift fonksiyonel bir bileşik harekettir, yani aynı anda farklı kas grupları çalıştırır iki ve daha fazla eklem haarekete dahil olur. Peki Deadlifthangi kas gruplarını çalıştırıyor ve Deadlift yaparken tatlı acıyı tam olarak hangi kasınızda hissetmelisiniz?",
            textAlign: TextAlign.center,
          ),
          const Text("İkincil olarak Çalışan Kaslar (Stabilizasyon)",
          style: TextStyle(fontWeight: FontWeight.bold),),
          const Text("Glutes\nHamstrings\nAdductor Magnus\nErector Spinae\nTrapezius\nGrip Muscles"),
          const Text("Birincil Çalışan Kaslar",
          style: TextStyle(fontWeight: FontWeight.bold),),
          const Text("Quadriceps\nTriceps Surae\nTransversus Abdominis\nObliques\nRhomboids"),
        ],
      ),
    );
  }
}


