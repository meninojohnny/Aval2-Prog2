import 'package:digital_library/media.dart';

class Music extends Media {
  final String artist;

  Music({
    required this.artist,
    required super.title,
    required super.duration,
  }) : super(type: type.book) ;


  @override
  String get name => artist;
}
