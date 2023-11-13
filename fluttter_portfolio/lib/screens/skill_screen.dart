// skill_screen.dart
import 'package:flutter/material.dart';
import '../widgets/skill_card_widget.dart';

class SkillScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skills'),
      ),
      body: SkillList(),
    );
  }
}

class SkillList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SkillCard(
          icon: Icons.code,
          title: 'Frontend Development',
          percentage: 80,
        ),
        SkillCard(
          icon: Icons.code,
          title: 'Backend Development',
          percentage: 70,
        ),
        SkillCard(
          icon: Icons.table_chart,
          title: 'Excel',
          percentage: 90,
        ),
        SkillCard(
          icon: Icons.image,
          title: 'Canva',
          percentage: 85,
        ),
      ],
    );
  }
}
