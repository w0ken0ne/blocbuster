import 'package:blocbuster/domain/entities/movie_entity.dart';
import 'package:blocbuster/presentation/widgets/movie_app_bar.dart';
import 'package:flutter/material.dart';

import 'movie_page_view.dart';

class MovieCarouselWidget extends StatelessWidget {
  final List<MovieEntity> movies;
  final int defaultIndex;
  const MovieCarouselWidget(
      {Key? key, required this.movies, required this.defaultIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MovieAppBar(),
        MoviePageView(
          movies: movies,
          initialPage: defaultIndex,
        )
      ],
    );
  }
}
