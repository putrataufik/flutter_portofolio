import 'package:flutter/material.dart';
import '../widgets/header_widget.dart';
import '../widgets/contact_widget.dart';
import '../widgets/aboutme_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderWidget(),
            const SizedBox(height: 16),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 0.05 * MediaQuery.of(context).size.width,
              ),
              child: const Text(
                'Putra Taufik Syaharuddin',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 0.05 * MediaQuery.of(context).size.width,
              ),
              child: const Text(
                'Full Stack Developer',
                style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 0.05 * MediaQuery.of(context).size.width,
              ),
              child: const Text(
                'Tentang Saya',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Align(
              alignment: Alignment.center,
              child: AboutMeWidget(),
            ),
            const SizedBox(height: 8),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: 0.05 * MediaQuery.of(context).size.width), // Atur margin kiri dan kanan sesuai kebutuhan
              child: const Align(
                alignment: Alignment.centerLeft,
                child: ContactWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
