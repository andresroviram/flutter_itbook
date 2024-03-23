import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/common/utils/helpers.dart';
import '../../navigation/cubit/home_navigation.dart';
import '../bloc/home/home_bloc.dart';
import '../widget/book_list_view.dart';
import 'detail_view.dart';
// import '../widget/search_bar.dart';

class HomeMovil extends StatefulWidget {
  const HomeMovil({super.key});

  @override
  State<HomeMovil> createState() => _HomeMovilState();
}

class _HomeMovilState extends State<HomeMovil> {
  late SearchController searchController;

  @override
  void initState() {
    super.initState();
    searchController = SearchController();
  }

  @override
  Widget build(BuildContext context) {
    String heroTag = 'book';
    OverlayEntry loader = context.watch<HomeBloc>().loader;
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state.failure != null) {
          ShowFailure.instance.mapFailuresToNotification(
            context,
            failure: state.failure!,
          );
          context.read<HomeBloc>().add(const HomeEvent.invalidate());
        }

        if (state.isLoading) {
          Overlay.of(context).insert(loader);
        } else {
          if (loader.mounted) loader.remove();
        }
      },
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // SearchBarWidget(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                      child: SearchAnchor(
                        searchController: searchController,
                        viewOnSubmitted: (value) {
                          context
                              .read<HomeBloc>()
                              .add(HomeEvent.search(search: value.trim()));
                          searchController.closeView(value.trim());
                        },
                        builder: (
                          BuildContext context,
                          SearchController controller,
                        ) {
                          return SearchBar(
                            controller: controller,
                            constraints: const BoxConstraints(
                              maxWidth: double.infinity,
                              minHeight: 50,
                            ),
                            hintText: 'Search books',
                            padding: const MaterialStatePropertyAll<EdgeInsets>(
                                EdgeInsets.symmetric(horizontal: 16.0)),
                            onTap: () {
                              controller.openView();
                            },
                            onChanged: (_) {
                              controller.openView();
                            },
                            leading: const Icon(Icons.search),
                          );
                        },
                        suggestionsBuilder:
                            (BuildContext _, SearchController controller) {
                          return List<ListTile>.generate(
                            state.historyList.length,
                            (int index) {
                              final history = state.historyList[index];
                              return ListTile(
                                title: Text(history),
                                onTap: () {
                                  context
                                      .read<HomeBloc>()
                                      .add(HomeEvent.search(search: history));
                                  setState(() {
                                    controller.closeView(history);
                                  });
                                },
                              );
                            },
                          );
                        },
                        viewConstraints: BoxConstraints(
                          maxWidth: constraints.maxWidth,
                          minHeight: constraints.minHeight,
                          maxHeight: constraints.maxHeight / 2.4,
                        ),
                      ),
                    ),
                    if (state.searchBooks.isNotEmpty) ...[
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Search',
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 250,
                        child: ListView.builder(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          itemCount: state.searchBooks.length,
                          itemBuilder: (context, index) {
                            final book = state.searchBooks[index];
                            return InkWell(
                              onTap: () {
                                context
                                    .read<HomeNavigation>()
                                    .navigateCatDetails(
                                      DetailView.path,
                                      isbn13: book.isbn13,
                                      heroTag: heroTag,
                                    );
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  width: 150,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Hero(
                                        tag: '$heroTag${book.isbn13}',
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: SizedBox(
                                            height: 170,
                                            width: 150,
                                            child: Image.network(
                                              book.image ?? '',
                                              filterQuality: FilterQuality.high,
                                              fit: BoxFit.cover,
                                              loadingBuilder: (context, child,
                                                  loadingProgress) {
                                                if (loadingProgress == null) {
                                                  return child;
                                                }
                                                return Center(
                                                  child:
                                                      CircularProgressIndicator(
                                                    value: loadingProgress
                                                                .expectedTotalBytes !=
                                                            null
                                                        ? loadingProgress
                                                                .cumulativeBytesLoaded /
                                                            loadingProgress
                                                                .expectedTotalBytes!
                                                        : null,
                                                  ),
                                                );
                                              },
                                              errorBuilder: (context, error,
                                                      stackTrace) =>
                                                  const Center(
                                                child: Icon(Icons.error),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 10,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              book.title ?? '',
                                              textAlign: TextAlign.left,
                                              softWrap: true,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary,
                                              ),
                                            ),
                                            Text(
                                              book.price.toString(),
                                              textAlign: TextAlign.left,
                                              softWrap: true,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 5,
                      ),
                      child: Text(
                        'Books',
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const BookListView(),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
