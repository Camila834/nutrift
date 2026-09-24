
import 'package:flutter/material.dart';

class ProgressCard extends StatelessWidget {
const ProgressCard({super.key});

@override
Widget build(BuildContext context) {
return Container(
padding: const EdgeInsets.all(20),
decoration: BoxDecoration(
gradient: const LinearGradient(
colors: [
Color(0xFF247A45),
Color(0xFF3B9B5F),
],
begin: Alignment.topLeft,
end: Alignment.bottomRight,
),
borderRadius: BorderRadius.circular(24),
boxShadow: [
BoxShadow(
color: const Color(0xFF247A45).withOpacity(0.20),
blurRadius: 15,
offset: const Offset(0, 8),
),
],
),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
const Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
'Seu progresso',
style: TextStyle(
color: Colors.white70,
fontSize: 14,
),
),
SizedBox(height: 5),
Text(
'Você está indo muito bem! 💪',
style: TextStyle(
color: Colors.white,
fontSize: 17,
fontWeight: FontWeight.bold,
),
),
],
),
Icon(
Icons.emoji_events_outlined,
color: Colors.white,
size: 35,
),
],
),

const SizedBox(height: 22),

Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
const Text(
'Meta semanal',
style: TextStyle(
color: Colors.white,
fontSize: 13,
),
),
const Text(
'72%',
style: TextStyle(
color: Colors.white,
fontWeight: FontWeight.bold,
fontSize: 14,
),
),
],
),

const SizedBox(height: 9),

ClipRRect(
borderRadius: BorderRadius.circular(10),
child: const LinearProgressIndicator(
value: 0.72,
minHeight: 9,
backgroundColor: Color(0x557FFFFFF),
valueColor: AlwaysStoppedAnimation<Color>(
Colors.white,
),
),
),

const SizedBox(height: 12),

const Text(
'Continue assim para alcançar sua meta!',
style: TextStyle(
color: Colors.white70,
fontSize: 12,
),
),
],
),
);
}
}

