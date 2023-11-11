import 'package:flutter/material.dart';

class ContactWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cardWidth = 300.0; // Ukuran yang diinginkan untuk lebar card
    final cardHeight = 80.0; // Ukuran yang diinginkan untuk tinggi card

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContactCard(
          icon: Icons.mail,
          label: 'Email',
          value: 'psyaharuddin@student.uc.ac.id',
          width: cardWidth,
          height: cardHeight,
        ),
        SizedBox(height: 5),
        ContactCard(
          icon: Icons.facebook,
          label: 'Facebook',
          value: 'facebook.com/putrataufik',
          width: cardWidth,
          height: cardHeight,
        ),
        SizedBox(height: 5),
        ContactCard(
          icon: Icons.phone,
          label: 'WhatsApp',
          value: '+62 812 9430 5862',
          width: cardWidth,
          height: cardHeight,
        ),
      ],
    );
  }
}

class ContactCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final double width;
  final double height;

  const ContactCard({
    Key? key,
    required this.icon,
    required this.label,
    required this.value,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(icon, size: 32),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
                Text(value),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
