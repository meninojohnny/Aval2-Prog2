import 'dart:convert';
import 'dart:io';
import 'utils.dart';
import '/media.dart';

class DigitalLibrary {
  List media = [];

  set addMedia(fileName) {
    final file = File(fileName);
    final jsonString = json.encode(media);
    file.writeAsStringSync(jsonString);
  }

  loadMedia(fileName) {
    final file = File(fileName);
    final jsonString = file.readAsStringSync();
    final dataList = json.decode(jsonString) as List<dynamic>;
    media = dataList.cast<Map<String, dynamic>>();
  }

  listMedia() {
    tabPrint(media.toString());
  }

  totalMediaDuration() {
    num total = 0;
    for (var i in media) {
      total += i['duration'];
    }

    return total;
  }
}
