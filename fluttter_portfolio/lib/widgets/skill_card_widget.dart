// skill_card.dart
import 'package:flutter/material.dart';

class SkillCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final int percentage;

  SkillCard({
    required this.icon,
    required this.title,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: ListTile(
          contentPadding: EdgeInsets.all(0),
          leading: Icon(icon, size: 64),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 70, // Sesuaikan dengan kebutuhan Anda
                height: 70, // Sesuaikan dengan kebutuhan Anda
                child: Stack(
                  children: [
                    Center(
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: CircularProgressIndicator(
                          value: percentage / 100,
                          backgroundColor: Colors.grey[300],
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                          strokeWidth: 5, // Sesuaikan dengan kebutuhan Anda
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        '$percentage%',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
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
