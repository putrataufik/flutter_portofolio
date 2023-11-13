// experience_widget.dart
import 'package:flutter/material.dart';

class ExperienceList extends StatelessWidget {
  final List<ExperienceItem> dataExperience;

  ExperienceList(this.dataExperience);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dataExperience.length,
      itemBuilder: (context, index) {
        return ExperienceCard(dataExperience[index]);
      },
    );
  }
}

class ExperienceCard extends StatelessWidget {
  final ExperienceItem experience;

  ExperienceCard(this.experience);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              experience.title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              experience.yearStart + ' - ' + experience.yearEnd,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 8),
            Text(experience.description),
          ],
        ),
      ),
    );
  }
}

class ExperienceItem {
  final String title;
  final String yearStart;
  final String yearEnd;
  final String description;

  ExperienceItem(this.title, this.yearStart, this.yearEnd, this.description);
}
