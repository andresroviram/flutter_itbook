import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inlaze/ui/home/widget/search_widget.dart';

import '../bloc/home/home_bloc.dart';
import '../widget/book_list_view.dart';
import '../widget/search_bar_widget.dart';

class HomeMovil extends StatelessWidget {
  const HomeMovil({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraints.maxHeight),
          child: Column(
            children: [
              SearchBarWidget(
                constraints: constraints,
              ),
              Expanded(
                child: BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    return SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          if (state.searchBooks.isNotEmpty) ...[
                            const SearchWidget()
                          ],
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            child: Text(
                              'Books',
                              textAlign: TextAlign.left,
                            ),
                          ),
                          const BookListView(),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
