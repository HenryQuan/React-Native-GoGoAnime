import 'package:animego/core/model/AnimeGenre.dart';
import 'package:animego/ui/page/GenrePage.dart';
import 'package:animego/ui/widget/AnimeFlatButton.dart';
import 'package:flutter/material.dart';

/// GenreList class
class GenreList extends StatelessWidget {
  /// The entire genre list all in one
  final genreList = [
    'Action',
    'Adventure',
    'Cars',
    'Comedy',
    'Dementia',
    'Demons',
    'Drama',
    'Ecchi',
    'Fantasy',
    'Game',
    'Harem',
    'Historical',
    'Horror',
    'Josei',
    'Kids',
    'Magic',
    'Martial Arts',
    'Mecha',
    'Military',
    'Music',
    'Mystery',
    'Parody',
    'Police',
    'Psychological',
    'Romance',
    'Samurai',
    'School',
    'Sci-Fi',
    'Seinen',
    'Shoujo',
    'Shoujo Ai',
    'Shounen',
    'Shounen Ai',
    'Slice of Life',
    'Space',
    'Sports',
    'Super Power',
    'Supernatural',
    'Thriller',
    'Vampire',
    'Yaoi',
    'Yuri'
  ];

  GenreList({
    Key? key,
    this.func,
  }) : super(key: key);

  /// This is only used by TabletHomePage
  final Function? func;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceEvenly,
      children: renderGenres(context),
    );
  }

  /// Render all genres as chips
  List<Widget> renderGenres(BuildContext context) {
    // Return a fixed length array (growable to be false)
    return genreList
        .map(
          (item) => AnimeFlatButton(
            child: Text(item),
            onPressed: () {
              final genre = AnimeGenre(item);
              if (func == null) {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GenrePage(genre: genre),
                  ),
                );
              } else {
                func!(genre.getFullLink());
              }
            },
          ),
        )
        .toList(growable: false);
  }
}
