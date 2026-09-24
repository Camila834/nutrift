
import 'package:flutter/material.dart';

class FeatureCard extends StatelessWidget {
final IconData icon;
final String title;
final String description;
final Color color;

const FeatureCard({
super.key,
required this.icon,
required this.title,
required this.description,
required this.color,
});

@override
Widget build(BuildContext context) {
return Container(
padding: const EdgeInsets.all(16),
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(20),
boxShadow: [
BoxShadow(
color: Colors.black.withOpacity(0.04),
blurRadius: 12,
offset: const Offset(0, 5),
),
],
),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Container(
width: 48,
height: 48,
decoration: BoxDecoration(
color: color.withOpacity(0.12),
borderRadius: BorderRadius.circular(14),
),
child: Icon(
icon,
color: color,
size: 25,
),
),

const SizedBox(height: 18),

Text(
title,
style: const TextStyle(
fontSize: 16,
fontWeight: FontWeight.bold,
color: Color(0xFF1D2B21),
),
),

const SizedBox(height: 5),

Text(
description,
style: const TextStyle(
fontSize: 12,
height: 1.4,
color: Colors.grey,
),
),
],
),
);
}
}


