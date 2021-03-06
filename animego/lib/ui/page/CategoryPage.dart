import 'package:animego/core/Firebase.dart';
import 'package:animego/ui/widget/AnimeGrid.dart';
import 'package:flutter/material.dart';

/// CategoryPage class
class CategoryPage extends StatelessWidget {
  const CategoryPage({
    Key? key,
    required this.url,
    required this.title,
  }) : super(key: key);

  final String? url;
  final String? title;

  @override
  Widget build(BuildContext context) {
    FirebaseEventService().logUseCategory();
    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? 'Unknown'),
      ),
      body: AnimeGrid(url: url),
    );
  }
}
