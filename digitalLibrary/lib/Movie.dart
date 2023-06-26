import 'package:digital_library/media.dart';

class Movie extends Media {
  final String director;

  Movie({
    required this.director,
    required super.title,
    required super.duration,
  }): super(type: type.book) ;


  @override
  String get name => director;
}
