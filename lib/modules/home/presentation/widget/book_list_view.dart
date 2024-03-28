import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/entities.dart';
import '../../navigation.dart';
import '../bloc/home/home_bloc.dart';
import '../view/detail/detail_view.dart';
import 'container_shimmer.dart';

class BookListView extends StatelessWidget {
  const BookListView({super.key});

  @override
  Widget build(BuildContext context) {
    String heroTag = 'book';
    final books = context.watch<HomeBloc>().state.books;
    final isDone = context.watch<HomeBloc>().state.isDone;
    return RefreshIndicator(
      onRefresh: context.read<HomeBloc>().refreshList,
      child: ListView.separated(
        shrinkWrap: true,
        primary: false,
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 5,
        ),
        physics: const BouncingScrollPhysics(),
        itemCount: books.length + 1,
        itemBuilder: (context, index) {
          if (index == books.length) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Opacity(
                  opacity: isDone ? 1 : 0,
                  child: CircularProgressIndicator(
                      color: Theme.of(context).hintColor),
                ),
              ),
            );
          } else {
            final BookEntity book = books[index];
            return InkWell(
              onTap: () {
                context.read<HomeNavigation>().navigateCatDetails(
                      DetailView.path,
                      isbn13: book.isbn13,
                      heroTag: heroTag,
                    );
              },
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).focusColor.withOpacity(0.05),
                      offset: const Offset(0, 5),
                      blurRadius: 5,
                    )
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'ID: ${book.isbn13 ?? ''}',
                          textAlign: TextAlign.left,
                          softWrap: true,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 20,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Hero(
                          tag: '$heroTag${book.isbn13}',
                          child: book.isNull
                              ? const ContainerShimmer(
                                  height: 250,
                                )
                              : CachedNetworkImage(
                                  filterQuality: FilterQuality.medium,
                                  fit: BoxFit.cover,
                                  height: 250,
                                  width: double.infinity,
                                  imageUrl: book.image ?? '',
                                  placeholder: (context, url) =>
                                      const ContainerShimmer(
                                    height: 250,
                                  ),
                                  errorWidget: (context, url, error) =>
                                      Container(
                                    height: 150,
                                    color: Colors.grey.withOpacity(0.5),
                                    child: const Center(
                                      child: Icon(
                                        Icons.error,
                                      ),
                                    ),
                                  ),
                                ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            book.title?.toUpperCase() ?? '',
                            softWrap: true,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          'Price: ${book.price ?? 0}',
                          textAlign: TextAlign.right,
                          softWrap: true,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }
        },
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: 20),
      ),
    );
  }
}
