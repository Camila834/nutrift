
import 'package:flutter/material.dart';

import '../widgets/feature_card.dart';
import '../widgets/progress_card.dart';
import '../widgets/section_title.dart';

class HomePage extends StatelessWidget {
const HomePage({super.key});

void _showMessage(BuildContext context, String message) {
ScaffoldMessenger.of(context).showSnackBar(
SnackBar(
content: Text(message),
behavior: SnackBarBehavior.floating,
),
);
}

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: const Color(0xFFF5F8F5),

// ------------------------------------------------------------
// APP BAR
// ------------------------------------------------------------

appBar: AppBar(
backgroundColor: const Color(0xFFF5F8F5),
elevation: 0,
automaticallyImplyLeading: false,

title: Row(
children: [
Container(
width: 43,
height: 43,
decoration: BoxDecoration(
color: const Color(0xFF247A45),
borderRadius: BorderRadius.circular(13),
),
child: const Icon(
Icons.eco,
color: Colors.white,
size: 25,
),
),

const SizedBox(width: 11),

const Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
'NutriFit',
style: TextStyle(
color: Color(0xFF247A45),
fontSize: 21,
fontWeight: FontWeight.bold,
),
),
Text(
'Saúde • Nutrição • Bem-estar',
style: TextStyle(
color: Colors.grey,
fontSize: 10,
),
),
],
),
],
),

actions: [
IconButton(
onPressed: () {
_showMessage(
context,
'Você não possui novas notificações.',
);
},
icon: Stack(
children: [
const Icon(
Icons.notifications_none_rounded,
color: Color(0xFF1D2B21),
size: 28,
),

Positioned(
right: 1,
top: 1,
child: Container(
width: 8,
height: 8,
decoration: const BoxDecoration(
color: Color(0xFFFF8F00),
shape: BoxShape.circle,
),
),
),
],
),
),

const SizedBox(width: 8),
],
),

// ------------------------------------------------------------
// CONTEÚDO
// ------------------------------------------------------------

body: SingleChildScrollView(
physics: const BouncingScrollPhysics(),
padding: const EdgeInsets.fromLTRB(20, 8, 20, 30),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
// Saudação
const Text(
'Olá, vamos cuidar de você? 👋',
style: TextStyle(
fontSize: 26,
fontWeight: FontWeight.bold,
color: Color(0xFF1D2B21),
),
),

const SizedBox(height: 7),

const Text(
'Pequenas escolhas hoje fazem uma grande diferença amanhã.',
style: TextStyle(
fontSize: 14,
color: Colors.grey,
height: 1.4,
),
),

const SizedBox(height: 24),

// --------------------------------------------------------
// BANNER PRINCIPAL
// --------------------------------------------------------

Container(
width: double.infinity,
padding: const EdgeInsets.all(23),
decoration: BoxDecoration(
color: const Color(0xFFFFF0D9),
borderRadius: BorderRadius.circular(25),
),
child: Row(
children: [
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Container(
padding: const EdgeInsets.symmetric(
horizontal: 10,
vertical: 6,
),
decoration: BoxDecoration(
color: const Color(0xFFFF8F00),
borderRadius: BorderRadius.circular(20),
),
child: const Text(
'NOVIDADE',
style: TextStyle(
color: Colors.white,
fontSize: 10,
fontWeight: FontWeight.bold,
),
),
),

const SizedBox(height: 13),

const Text(
'Sua jornada\ncomeça hoje.',
style: TextStyle(
fontSize: 24,
height: 1.15,
fontWeight: FontWeight.bold,
color: Color(0xFF553B18),
),
),

const SizedBox(height: 9),

const Text(
'Cuide da sua alimentação de forma simples.',
style: TextStyle(
fontSize: 12,
color: Color(0xFF80653D),
height: 1.4,
),
),

const SizedBox(height: 15),

SizedBox(
height: 38,
child: ElevatedButton(
onPressed: () {
_showMessage(
context,
'Plano personalizado selecionado!',
);
},
style: ElevatedButton.styleFrom(
backgroundColor: const Color(0xFFFF8F00),
foregroundColor: Colors.white,
elevation: 0,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(12),
),
),
child: const Text(
'Começar',
style: TextStyle(
fontWeight: FontWeight.bold,
),
),
),
),
],
),
),

const SizedBox(width: 8),

// Ilustração feita somente com widgets
Container(
width: 92,
height: 150,
decoration: BoxDecoration(
color: Colors.white.withOpacity(0.55),
borderRadius: BorderRadius.circular(50),
),
child: const Center(
child: Icon(
Icons.local_dining,
color: Color(0xFFFF8F00),
size: 62,
),
),
),
],
),
),

const SizedBox(height: 25),

// --------------------------------------------------------
// PROGRESSO
// --------------------------------------------------------

const ProgressCard(),

const SizedBox(height: 27),

// --------------------------------------------------------
// FUNCIONALIDADES
// --------------------------------------------------------

const SectionTitle(
title: 'Explore a NutriFit',
action: 'Ver tudo',
),

const SizedBox(height: 13),

Row(
children: [
Expanded(
child: FeatureCard(
icon: Icons.restaurant_menu_rounded,
title: 'Refeições',
description: 'Organize sua alimentação',
color: const Color(0xFF247A45),
),
),

const SizedBox(width: 13),

Expanded(
child: FeatureCard(
icon: Icons.water_drop_outlined,
title: 'Hidratação',
description: 'Controle sua água diária',
color: const Color(0xFF1976D2),
),
),
],
),

const SizedBox(height: 13),

Row(
children: [
Expanded(
child: FeatureCard(
icon: Icons.monitor_weight_outlined,
title: 'Peso',
description: 'Acompanhe sua evolução',
color: const Color(0xFF8E44AD),
),
),

const SizedBox(width: 13),

Expanded(
child: FeatureCard(
icon: Icons.fitness_center,
title: 'Atividades',
description: 'Registre seus exercícios',
color: const Color(0xFFE85D04),
),
),
],
),

const SizedBox(height: 27),

// --------------------------------------------------------
// DICA DO DIA
// --------------------------------------------------------

const SectionTitle(
title: 'Dica do dia',
),

const SizedBox(height: 13),

Container(
width: double.infinity,
padding: const EdgeInsets.all(19),
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(20),
border: Border.all(
color: const Color(0xFFE2EAE3),
),
),
child: const Row(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Icon(
Icons.lightbulb_outline_rounded,
color: Color(0xFFFFB300),
size: 30,
),

SizedBox(width: 13),

Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
'Não pule o café da manhã',
style: TextStyle(
fontWeight: FontWeight.bold,
fontSize: 15,
color: Color(0xFF1D2B21),
),
),

SizedBox(height: 5),

Text(
'Começar o dia com uma refeição equilibrada '
'pode ajudar você a manter uma rotina alimentar '
'mais organizada.',
style: TextStyle(
color: Colors.grey,
fontSize: 12,
height: 1.45,
),
),
],
),
),
],
),
),

const SizedBox(height: 25),

// --------------------------------------------------------
// FRASE FINAL
// --------------------------------------------------------

Center(
child: Column(
children: [
const Icon(
Icons.favorite,
color: Color(0xFF247A45),
size: 25,
),

const SizedBox(height: 8),

const Text(
'Cuide de você todos os dias.',
style: TextStyle(
fontSize: 14,
fontWeight: FontWeight.w600,
color: Color(0xFF247A45),
),
),

const SizedBox(height: 5),

Text(
'NutriFit • Sua saúde em primeiro lugar',
style: TextStyle(
fontSize: 11,
color: Colors.grey.shade500,
),
),
],
),
),
],
),
),
);
}
}



