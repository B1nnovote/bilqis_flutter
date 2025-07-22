import 'package:flutter/material.dart';
import 'package:bilqis_project/main_layout.dart';

class Latihan extends StatelessWidget {
  const Latihan({super.key});

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        'https://www.google.com/imgres?q=foto%20uni&imgurl=https%3A%2F%2Fawsimages.detik.net.id%2Fapi%2Fwm%2F2024%2F02%2F05%2Ftikttok-unirozalisna-dan-tiktok-adamisraaa_169.jpeg%3Fwid%3D54%26w%3D650%26v%3D1%26t%3Djpeg&imgrefurl=https%3A%2F%2Fwww.detik.com%2Fsumut%2Fberita%2Fd-7179109%2Funi-bakwan-dan-9-pemuda-asal-padang-hibur-warga-tiktok-bikin-ngakak&docid=DwpLYa_Ao8FJaM&tbnid=D2Sk2mwgK8ztUM&vet=12ahUKEwjYyImajdCOAxVnyjgGHX60M-0QM3oECAsQAA..i&w=650&h=365&hcb=2&ved=2ahUKEwjYyImajdCOAxVnyjgGHX60M-0QM3oECAsQAA';

    return Scaffold(
      appBar: AppBar(
        title: const Text("Uni Bakwan Area"),
        backgroundColor: const Color.fromARGB(255, 243, 169, 193),
      ),
      backgroundColor: const Color(0xFFF5F3F4),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Ratu Es kul kul',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Kim Uni Bakwan',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.pinkAccent,
                    height: 1.1,
                  ),
                ),
                const SizedBox(height: 20),

                // Gambar 1 (besar di atas)
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(imageUrl),
                ),
                const SizedBox(height: 16),

                // Gambar 2 dan 3 (berdampingan)
                Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(imageUrl),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(imageUrl),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Gambar 4 (besar di bawah)
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(imageUrl),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
