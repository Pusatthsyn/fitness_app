import 'package:flutter/material.dart';

class Squat extends StatelessWidget {
  const Squat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Squat"),
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
                'assets/gifs/squat.gif',
                width: MediaQuery.of(context).size.width,
                height: 400,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "   Squat fonksiyonel bir bileşik harekettir, yani aynı anda farklı kas grupları çalıştırır iki ve daha fazla eklem haarekete dahil olur. Peki Squat hangi kas gruplarını çalıştırıyor ve squat yaparken tatlı acıyı tam olarak hangi kasınızda hissetmelisiniz?\nSquat Hareketi Aşağıdaki Kasları Hedef alır;\nLower body:\nQuadriceps\nGluteus maximus\nCalves\nHamstring\n\nCore (stabilising muscles):\nErector spinae \nRectus abdominis\nInternal and external obliques",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}


