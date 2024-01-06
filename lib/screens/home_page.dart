import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ana Sayfa",
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildRoundedContainer(
              width: 350,
              height: 250,
              child: ElevatedButton(
                onPressed: () {
                  // Button 1 pressed
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black, backgroundColor: Colors.amber, // Buton üzerindeki metin rengi
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0), // Butonun köşe yarıçapı
                  ),
                ),
                child: const Text(
                  'SALONDA BAŞLA',
                  style: TextStyle(fontSize: 22, fontStyle: FontStyle.italic), // Buton üzerindeki metin boyutu
                ),
              ),
              image: const AssetImage('assets/images/img03.png'), // Yeni eklenen resim
            ),
            const SizedBox(height: 36), // Kutu ve buton arasındaki mesafe
            _buildRoundedContainer(
              width: 350,
              height: 250,
              child: ElevatedButton(
                onPressed: () {
                  // Button 2 pressed
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black, backgroundColor: Colors.amber, // Buton üzerindeki metin rengi
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0), // Butonun köşe yarıçapı
                  ),
                ),
                child: const Text(
                  'EVDE BAŞLA',
                  style: TextStyle(fontSize: 22, fontStyle: FontStyle.italic), // Buton üzerindeki metin boyutu
                ),
              ),
              image: const AssetImage('assets/images/img04.png'), // Yeni eklenen resim
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRoundedContainer({required double width, required double height, required Widget child, required ImageProvider<Object> image}) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white, // Kutu rengi
        borderRadius: BorderRadius.circular(24), // Köşe yarıçapı
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24), // Köşe yarıçapı
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image(
              image: image,
              fit: BoxFit.cover, // Resmi kutunun boyutuna uygun şekilde boyutlandır
            ),
            Positioned(
              bottom: 16, // Butonları resmin altına yerleştir
              left: 16, // Butonları sola hizala
              right: 16, // Butonları sağa hizala
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
