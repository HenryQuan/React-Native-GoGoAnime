import 'package:animego/core/model/AnimeDetailedInfo.dart';
import 'package:animego/core/parser/BasicParser.dart';
import 'package:html/dom.dart';

class DetailedInfoParser extends BasicParser {
  DetailedInfoParser(String link) : super(link);

  @override
  AnimeDetailedInfo parseHTML(Document? body) {
    return AnimeDetailedInfo(body);
  }
}
