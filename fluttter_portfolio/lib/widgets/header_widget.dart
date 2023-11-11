import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white, // Warna border
          width: 5.0, // Lebar border
        ),
        borderRadius: BorderRadius.circular(15.0), // Radius sudut border
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Warna shadow
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // Posisi shadow
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0), // Radius sudut gambar
        child: Image.asset(
          'assets/images/IMG_8955.JPG',
          width: screenWidth,
          height: 400,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
