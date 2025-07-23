import 'package:bilqis_project/list_view/detail_wisata_screen.dart';
import 'package:flutter/material.dart';

class WisataScreen extends StatelessWidget {
  WisataScreen({super.key});

//data
  final List<Map<String, dynamic>> WisataData = [
    {
      "nama": "Raja Ampat",
      "Kota": "Waisai",
      "image": "image/raja-ampat.jpg",
      "desc": "Raja Ampat",
    },
    {
      "nama": "Pink Beach",
      "Kota": "kota",
      "image": "image/pink-beach.jpg",
      "desc": "Pantai Dengan Pasir Berwarna Pink",
    },
    {
      "nama": "Namsan Tower",
      "Kota": "Seoul",
      "image": "image/n-seoul-tower_night.jpg",
      "desc": "Namsan Towe",
    },
    {
      "nama": "Hutan Kota",
      "Kota": "Kota",
      "image": "image/hutan-kota.jpg",
      "desc": "Hutan Kota",
    },
    {
      "nama": "Disney Land Japan",
      "Kota": "Tokyo",
      "image": "image/Disneyland-Japan-1024x576.jpg",
      "desc": "Disney Land",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.pink, Colors.orangeAccent],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: ListView.builder(
          itemCount: WisataData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailWisataScreen(
                      nama: WisataData[index]["nama"],
                      Kota: WisataData[index]["Kota"],
                      image: WisataData[index]["image"],
                      desc: WisataData[index]["desc"],
                    ),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: 200,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("${WisataData[index]["image"]}"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  child: Text(
                    "${WisataData[index]["nama"]} - ${WisataData[index]["Kota"]}",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
