import 'dart:math';

import 'package:flutter/material.dart';

class CircularProgress extends CustomPainter {
  final double currentProgress; // Valeur actuelle de la progression (0 à 100)
  final double strokeWidth;
  final double radius;
  final Color color;

  CircularProgress({
    super.repaint,
    required this.currentProgress,
    required this.strokeWidth,
    required this.radius,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // Dessiner le cercle de fond (inactif)
    Paint paint = Paint()
      ..strokeWidth = strokeWidth
      ..color = Colors.grey[200]! // Couleur du cercle inactif (gris clair)
      ..style =
          PaintingStyle.stroke; // Mode de peinture (dans ce cas, un contour)

    Offset center = Offset(size.width / 2, size.height / 2); // Centre du cercle
    // Rayon du cercle (100 unités, adapté à l'écran)
    canvas.drawCircle(center, radius, paint); // Dessiner le cercle inactif

    // Dessiner l'arc animé (cercle de progression)
    Paint animationArc = Paint()
      ..strokeWidth = strokeWidth
      ..color = color // Couleur de l'arc animé (bleu dans ce cas)
      ..style = PaintingStyle.stroke // Mode de peinture (contour)
      ..strokeCap = StrokeCap.round; // Extrémité de l'arc arrondie

    double angle =
        2 * pi * (currentProgress / 100); // Calculer l'angle d'arc en radians
    canvas.drawArc(
        Rect.fromCircle(
            center: center, radius: radius), // Zone où dessiner l'arc
        -pi /
            2, // Angle de début de l'arc (90 degrés, position de départ à midi sur une horloge)
        angle, // Angle de fin de l'arc (calculé en fonction de la progression)
        false, // Sens des aiguilles d'une montre (dans ce cas, dans le sens des aiguilles d'une montre)
        animationArc); // Peindre l'arc animé
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // Toujours redessiner lorsque la valeur de la progression change
    return true;
  }
}
