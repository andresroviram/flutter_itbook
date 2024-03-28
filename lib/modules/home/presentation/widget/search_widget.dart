import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inlaze/modules/home/presentation/bloc/home/home_bloc.dart';

import '../../navigation.dart';
import '../view/detail/detail_view.dart';
import 'book_poster.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    String heroTag = 'book';
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: Text(
                '${'search'.tr()}: ${state.searchResult}',
              ),
            ),
            SizedBox(
              height: 230,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: state.searchBooks.length,
                itemBuilder: (context, index) {
                  final book = state.searchBooks[index];
                  return InkWell(
                    onTap: () {
                      context.read<HomeNavigation>().navigateCatDetails(
                            DetailView.path,
                            isbn13: book.isbn13,
                            heroTag: heroTag,
                          );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.1),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Theme.of(context).focusColor.withOpacity(0.05),
                            offset: const Offset(0, 5),
                            blurRadius: 5,
                          )
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 160,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            child: Hero(
                              tag: '$heroTag${book.isbn13}',
                              child: BookPoster(
                                fit: BoxFit.cover,
                                height: 170,
                                imagePath: book.image,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 7,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  book.title ?? '',
                                  softWrap: true,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  book.price.toString(),
                                  softWrap: true,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(width: 20);
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
