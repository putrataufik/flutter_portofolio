import 'package:flutter/material.dart';
import '../widgets/header_widget.dart';
import '../widgets/contact_widget.dart';
import '../widgets/aboutme_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWidget(),
            SizedBox(height: 16),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 0.05 * MediaQuery.of(context).size.width,
              ),
              child: Text(
                'Putra Taufik Syaharuddin',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 8),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 0.05 * MediaQuery.of(context).size.width,
              ),
              child: Text(
                'Full Stack Developer',
                style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 0.05 * MediaQuery.of(context).size.width,
              ),
              child: Text(
                'Tentang Saya',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.center,
              child: AboutMeWidget(),
            ),
            SizedBox(height: 8),
            Container(
  margin: EdgeInsets.symmetric(horizontal: 16), // Atur margin kiri dan kanan sesuai kebutuhan
  child: Align(
    alignment: Alignment.centerLeft,
    child: ContactWidget(),
  ),
),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Experience',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.code),
            label: 'Skills',
          ),
        ],
      ),
    );
  }
}
