import 'package:flutter/material.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const cardWidth = 300.0; // Ukuran yang diinginkan untuk lebar card
    const cardHeight = 80.0; // Ukuran yang diinginkan untuk tinggi card

    return const Column(
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
          value: 'facebook.com/Omaga',
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
    return SizedBox(
      width: width,
      height: height,
      
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(icon, size: 32),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(value),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
