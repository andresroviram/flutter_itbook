import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/common/utils/helpers.dart';
import '../bloc/home/home_bloc.dart';
import '../widget/book_list_view.dart';
// import '../widget/search_bar.dart';

class HomeMovil extends StatefulWidget {
  const HomeMovil({super.key});

  @override
  State<HomeMovil> createState() => _HomeMovilState();
}

class _HomeMovilState extends State<HomeMovil> {
  @override
  Widget build(BuildContext context) {
    OverlayEntry loader = context.watch<HomeBloc>().loader;
    // final searchBook = context.watch<HomeBloc>().state.searchBooks;
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
                  children: <Widget>[
                    // SearchBarWidget(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                      child: SearchAnchor(
                        viewOnSubmitted: (value) {
                          context
                              .read<HomeBloc>()
                              .add(HomeEvent.search(search: value.trim()));
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
                            // trailing: <Widget>[
                            //   Tooltip(
                            //     message: 'Change brightness mode',
                            //     child: IconButton(
                            //       isSelected: isDark,
                            //       onPressed: () {
                            //         setState(() {
                            //           isDark = !isDark;
                            //         });
                            //       },
                            //       icon: const Icon(Icons.wb_sunny_outlined),
                            //       selectedIcon: const Icon(Icons.brightness_2_outlined),
                            //     ),
                            //   )
                            // ],
                          );
                        },
                        suggestionsBuilder: (BuildContext context,
                            SearchController controller) {
                          return state.searchBooks.isEmpty
                              ? state.historyList.map(
                                  (e) {
                                    return ListTile(
                                      title: Text(e),
                                      onTap: () {
                                        setState(() {
                                          controller.closeView(e);
                                        });
                                      },
                                    );
                                  },
                                ).toList()
                              : List<ListTile>.generate(
                                  state.searchBooks.length,
                                  (int index) {
                                    final book = state.searchBooks[index];
                                    return ListTile(
                                      title: Text(book.title ?? ''),
                                      onTap: () {},
                                    );
                                  },
                                );
                          /* state.searchBooks.isEmpty
                              ? state.historyList.map(
                                  (e) {
                                    return ListTile(
                                      title: Text(e),
                                      onTap: () {
                                        setState(() {
                                          controller.closeView(e);
                                        });
                                      },
                                    );
                                  },
                                ).toList()
                              :  */

                          //     state.searchBooks.map(
                          //   (e) {
                          //     return ListTile(
                          //       title: Text(e.title ?? ''),
                          //       onTap: () {
                          //         setState(() {
                          //           controller.closeView(e.title);
                          //         });
                          //       },
                          //     );
                          //   },
                          // ).toList();
                          // return List<ListTile>.generate(
                          //   0,
                          //   (int index) {
                          //     final String item = 'item $index';
                          //     return ListTile(
                          //       title: Text(item),
                          //       onTap: () {
                          //         setState(() {
                          //           controller.closeView(item);
                          //         });
                          //       },
                          //     );
                          //   },
                          // );
                        },
                        viewConstraints: BoxConstraints(
                          maxWidth: constraints.maxWidth,
                          minHeight: constraints.minHeight,
                          maxHeight: constraints.maxHeight / 2.4,
                        ),
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
