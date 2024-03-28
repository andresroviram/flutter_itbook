import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inlaze/modules/home/presentation/widget/search_widget.dart';

import '../bloc/home/home_bloc.dart';
import '../widget/book_list_view.dart';
import '../widget/search_bar_widget.dart';

class HomeMovil extends StatelessWidget {
  const HomeMovil({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = context.watch<HomeBloc>().scrollController;
    return Column(
      children: [
        SearchBarWidget(
          voidCallback: context.read<HomeBloc>().scrollUp,
        ),
        Expanded(
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return RefreshIndicator(
                onRefresh: context.read<HomeBloc>().refreshList,
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      if (state.searchBooks.isNotEmpty) ...[
                        const SearchWidget()
                      ],
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: Text(
                          'books'.tr(),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const BookListView(),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
