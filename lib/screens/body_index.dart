import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyIndexScreen extends StatefulWidget {
  const BodyIndexScreen({Key? key}) : super(key: key);

  @override
  State<BodyIndexScreen> createState() => _BodyIndexScreenState();
}

// body index text
class _BodyIndexScreenState extends State<BodyIndexScreen> {
  bool isMale = true;
  bool isFemale = false;
  TextEditingController ageController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  double bmi = 0.0;
  double boy = 0;
  double kilo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: 
    AppBar(
      title: const Text("Vücut Kitle Endeksi", style: TextStyle(
        fontSize: 22, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold
      ),),
      backgroundColor: Colors.blue,
    ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Stack(
          children: [
            SafeArea(
              top: true,
              child: Column(
                children: [
                  /*Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Vücut Kitle İndex Hesapla',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/logo.png',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),*/
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 400,
                        width: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              isMale
                                  ? 'assets/images/12.png'
                                  : isFemale
                                      ? 'assets/images/11.png'
                                      : 'assets/images/12.png',
                            ),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            'Cinsiyet',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isFemale = !isFemale;
                                    if (isFemale = true) {
                                      setState(() {
                                        isMale = false;
                                      });
                                    }
                                  });
                                },
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: isFemale ? Colors.pink : Colors.grey,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.female_outlined,
                                      color: Colors.white,
                                      size: 41,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isMale = !isMale;
                                    if (isMale = true) {
                                      setState(() {
                                        isFemale = false;
                                      });
                                    }
                                  });
                                },
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: isMale
                                        ? Colors.blueAccent
                                        : Colors.grey,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.male_outlined,
                                      color: Colors.white,
                                      size: 41,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Yaş',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 50,
                            width: 140,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              controller: ageController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Boy (m)',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 50,
                            width: 140,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              controller: heightController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Ağırlık (kg)',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 50,
                            width: 140,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              controller: weightController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        boy = double.parse(heightController.text);
                        kilo = double.parse(weightController.text);
                        bmi = kilo / (boy * boy);
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.1,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                          colors: [
                            Colors.purpleAccent,
                            Colors.blueAccent,
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Endeks Hesapla',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              letterSpacing: 1.2, // harfler arasi boslugu verme
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,
                  ),
                  Center(
                    child: Column(
                      children: [
                        const Text("0 - 18,49: Zayıf"),
                        const Text("18,5 - 24,99: Normal"),
                        const Text("25,0 - 29,99: Fazla Kilolu"),
                        const Text("30,0 - 34,99: Şişman (Obez) - I. Sınıf"),
                        const Text("35,0 - 44,99: Şişman (Obez) - II. Sınıf"),
                        const Text("45,0 ve üstü: Aşırı Şişman (Aşırı Obez) - III. Sınıf"),
                        const SizedBox(height: 16,),
                        Text(
                          'Vücut Kitle Endeksiniz: ${bmi.toStringAsFixed(2)}',
                          style: const TextStyle(fontSize: 20),
                        ),
                        const SizedBox(height: 10),
                        if (0 < bmi && bmi < 18.5)
                          const Text(
                            'Vücut Kitle Durumunuz: Zayıf',style: TextStyle(color: Colors.green, fontSize: 18),
                          ),
                        if (18.5 <= bmi && bmi < 25)
                          const Text(
                            'Vücut Kitle Durumunuz: Normal',style: TextStyle(color: Colors.green, fontSize: 18),
                          ),
                        if (25 <= bmi && bmi < 30)
                          const Text(
                            'Vücut Kitle Durumunuz: Fazla Kilolu',style: TextStyle(color: Colors.green, fontSize: 18),
                          ),
                        if (30 <= bmi && bmi < 35)
                          const Text(
                            'Vücut Kitle Durumunuz: Şişman (Obez) - I. Sınıf',style: TextStyle(color: Colors.red, fontSize: 18),
                          ),
                          if (35 <= bmi && bmi < 45)
                          const Text(
                            'Vücut Kitle Durumunuz: Şişman (Obez) - II. Sınıf',style: TextStyle(color: Colors.red, fontSize: 18),
                          ),
                          if (45 <= bmi)
                          const Text(
                            'Vücut Kitle Durumunuz: Aşırı Şişman (Aşırı Obez) - III. Sınıf',style: TextStyle(color: Colors.red, fontSize: 18),
                          ),
                          const SizedBox(height: 25,
                  ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}