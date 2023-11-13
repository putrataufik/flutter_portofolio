// experience_screen.dart
import 'package:flutter/material.dart';
import '../widgets/experience_widget.dart';

class ExperienceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<ExperienceItem> dataExperience = [
      ExperienceItem('O - Week IRD', '2022', '2023',
          'O - Week merupakan sebuah tahapan pertama untuk mahasiswa baru dalam dunia perkuliahan'),
      ExperienceItem(
          'O-Week App', '2022', '2023', 'O-Week App adalahh sebuah aplikasi yang digunakan oleh panitia dan mahasiswa baru dalam melaksanakan Minggu Orientasi mahasiswa baru'),

      // ... tambahkan pengalaman lainnya
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Experience'),
      ),
      body: ExperienceList(dataExperience),
    );
  }
}



