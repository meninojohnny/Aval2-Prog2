//
// ESTE ARQUIVO NÃO DEVE SER ALTERADO
//

import '/home/aluno/dev/ava-2/digital_library/lib/digital_library.dart';
import 'package:diglib/media.dart';

void main() {
  const mediaFileName = 'data/media.json';

  final lib = DigitalLibrary();
  int totalDuration;

  lib.loadMedia(mediaFileName);

  print('#### FILMES\n');
  totalDuration = lib.totalMediaDuration(MediaType.movie);
  lib.listMedia(MediaType.movie);
  print('DURAÇÂO TOTAL: $totalDuration min\n');

  print('#### LIVROS\n');
  totalDuration = lib.totalMediaDuration(MediaType.book);
  lib.listMedia(MediaType.book);
  print('DURAÇÂO TOTAL: $totalDuration min\n');

  print('#### MÙSICAS\n');
  totalDuration = lib.totalMediaDuration(MediaType.music);
  lib.listMedia(MediaType.music);
  print('DURAÇÂO TOTAL: $totalDuration min\n');

  print('#### TODAS AS MÍDIAS\n');
  totalDuration = lib.totalMediaDuration();
  lib.listMedia();
  print('DURAÇÂO TOTAL: $totalDuration min\n');

  // ESTA LINHA PODE SER ALTERADA
  print('AUTORES: João Vitor da Silva Pereira e Weslley Domille Fontenele Pereira');
}
