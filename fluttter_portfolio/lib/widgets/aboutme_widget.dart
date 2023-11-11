import 'package:flutter/material.dart';

class AboutMeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String fullText = '''
Saya adalah seorang pengembang perangkat lunak dengan minat khusus dalam pengembangan aplikasi mobile menggunakan Flutter. Saya memiliki pengalaman dalam mengembangkan berbagai jenis aplikasi, termasuk aplikasi e-commerce, aplikasi manajemen proyek, dan aplikasi sosial. Keahlian saya meliputi Flutter, Dart, dan berbagai teknologi terkait mobile development. Saya senang belajar hal-hal baru dan selalu mencari cara untuk meningkatkan keterampilan pengembangan saya.
''';
    return Column(
      children: [
        Container(
              margin: EdgeInsets.only(
                  left: 0.05 * MediaQuery.of(context).size.width),
            ),
            SizedBox(height: 8),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 0.05 * MediaQuery.of(context).size.width,
              ),
              child: ExpandableText(
              
              text: fullText,
              trimLines: 3,
              trimStyle: TextStyle(fontSize: 16),
              expandStyle: TextStyle(fontSize: 16),
              linkText: 'Selengkapnya',
              lessText: 'Lebih Sedikit',
              linkColor: Colors.blue,
            ),
            ),
      ],
    );
  }
}

class ExpandableText extends StatefulWidget {
  final String text;
  final int trimLines;
  final TextStyle trimStyle;
  final TextStyle expandStyle;
  final String linkText;
  final String lessText;
  final Color linkColor;

  ExpandableText({
    required this.text,
    required this.trimLines,
    required this.trimStyle,
    required this.expandStyle,
    required this.linkText,
    required this.lessText,
    required this.linkColor,
  });

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedCrossFade(
          firstChild: Text(
            widget.text,
            style: expanded ? widget.expandStyle : widget.trimStyle,
          ),
          secondChild: GestureDetector(
            onTap: () {
              setState(() {
                expanded = !expanded;
              });
            },
            child: Text(
              widget.text,
              maxLines: widget.trimLines,
              overflow: TextOverflow.ellipsis,
              style: widget.trimStyle,
            ),
          ),
          crossFadeState:
              expanded ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(milliseconds: 300),
        ),
        if ((expanded && widget.lessText.isNotEmpty) ||
            (!expanded && widget.linkText.isNotEmpty))
          GestureDetector(
            onTap: () {
              setState(() {
                expanded = !expanded;
              });
            },
            child: Text(
              expanded ? widget.lessText : widget.linkText,
              style: TextStyle(
                color: widget.linkColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
      ],
    );
  }
}
