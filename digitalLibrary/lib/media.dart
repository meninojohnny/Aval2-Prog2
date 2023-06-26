// ignore_for_file: camel_case_types

enum type {
  book,
  movie,
  music,
}

abstract class Media {
  final String title;
  final int duration;

  Media({
    required this.title,
    required this.duration,
    type,
  });

  String get name;
}
