
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
final String title;
final String? action;

const SectionTitle({
super.key,
required this.title,
this.action,
});

@override
Widget build(BuildContext context) {
return Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Text(
title,
style: const TextStyle(
fontSize: 20,
fontWeight: FontWeight.bold,
color: Color(0xFF1D2B21),
),
),
if (action != null)
TextButton(
onPressed: () {},
child: Text(
action!,
style: const TextStyle(
color: Color(0xFF247A45),
fontWeight: FontWeight.w600,
),
),
),
],
);
}
}

