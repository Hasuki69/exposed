part of '../functions.dart';

Color getRandomColor({int alpha = 255}) {
  math.Random random = math.Random();

  return Color.fromARGB(
    alpha,
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256),
  );
}
