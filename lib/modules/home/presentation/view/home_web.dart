import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/home/home_bloc.dart';
import '../widget/book_grid_view.dart';
import '../widget/search_bar_widget.dart';
import '../widget/search_widget.dart';

class HomeWeb extends StatelessWidget {
  const HomeWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = context.watch<HomeBloc>().scrollController;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraints.maxHeight),
          child: Column(
            children: [
              SearchBarWidget(
                constraints: constraints,
                voidCallback: context.read<HomeBloc>().scrollUp,
              ),
              Expanded(
                child: BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    return SingleChildScrollView(
                      controller: scrollController,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          if (state.searchBooks.isNotEmpty) ...[
                            const SearchWidget()
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
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: BookGridView(),
                          ),
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
