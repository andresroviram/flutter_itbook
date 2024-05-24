import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:inlaze/core/utils/extension/extension.dart';

import '../bloc/home/home_bloc.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({
    super.key,
    this.constraints,
    this.voidCallback,
  });
  final BoxConstraints? constraints;
  final VoidCallback? voidCallback;

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  late HomeBloc homeBloc;
  late SearchController searchController;

  @override
  void initState() {
    super.initState();
    homeBloc = context.read<HomeBloc>();
    searchController = SearchController();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.of(context).size.height;
    final maxWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: SearchAnchor(
        viewBackgroundColor: context.colorScheme.background,
        viewShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        searchController: searchController,
        viewLeading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        viewOnSubmitted: (value) {
          homeBloc.add(HomeEvent.search(search: value.trim()));
          searchController.closeView(value.trim());
          widget.voidCallback?.call();
        },
        builder: (BuildContext context, SearchController controller) =>
            SearchBar(
          controller: controller,
          constraints: const BoxConstraints(
            maxWidth: double.infinity,
            minHeight: 50,
          ),
          hintText: 'search_books'.tr(),
          padding: const MaterialStatePropertyAll<EdgeInsets>(
              EdgeInsets.symmetric(horizontal: 16.0)),
          onTap: () {
            controller.openView();
          },
          onChanged: (_) {
            controller.openView();
          },
          leading: const Icon(Icons.search),
          trailing: <Widget>[
            Tooltip(
              message: 'clear'.tr(),
              child: IconButton(
                onPressed: () {
                  setState(() => searchController.clear());
                },
                icon: const Icon(Icons.close),
              ),
            )
          ],
        ),
        suggestionsBuilder: (BuildContext _, SearchController controller) =>
            List<ListTile>.generate(
          homeBloc.state.historyList.length,
          (int index) {
            final history = homeBloc.state.historyList[index];
            return ListTile(
              title: Text(history),
              hoverColor: Colors.white.withOpacity(0.5),
              onTap: () {
                homeBloc.add(HomeEvent.search(search: history));
                controller.closeView(history);
                widget.voidCallback?.call();
              },
              trailing: TextButton(
                onPressed: () {
                  homeBloc.add(HomeEvent.removeHistory(history));
                  controller.closeView(history);
                  widget.voidCallback?.call();
                },
                style: TextButton.styleFrom(
                  elevation: 2,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                ),
                child: Text('remove'.tr()),
              ),
            );
          },
        ),
        viewConstraints: BoxConstraints(
          maxWidth: widget.constraints?.maxWidth ?? maxWidth,
          minHeight: widget.constraints?.minHeight ?? 0,
          maxHeight: widget.constraints?.maxHeight ?? maxHeight,
        ),
      ),
    );
  }
}
