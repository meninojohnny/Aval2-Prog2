//import 'package:digital_library/,media.dart';
import 'package:digital_library/media.dart';

class AudioBook extends Media {
  final String author;

  AudioBook({
    required this.author,
    required super.title,
    required super.duration,
  }) : super(type: type.book) ;

  @override
  String get name => author;
}
