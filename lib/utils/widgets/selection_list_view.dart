import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/themes/colors.dart';

class SelectionListView<T> extends StatelessWidget {
   SelectionListView(
      {Key? key,
       this.asyncValue,
       this.isAsync = true,
       this.notAsyncData ,
      required this.title,
      required this.onItemSelected,
      this.initialSelection})
      : super(key: key);
  final AsyncValue<List<T>>? asyncValue;
  final Function(T item) onItemSelected;
  final bool Function(T item)? initialSelection;
  final String Function(T item) title;
  final bool isAsync;
  dynamic notAsyncData;

  @override
  Widget build(BuildContext context) {
    print("notAsyncData:$notAsyncData");
    if(isAsync){
      return asyncValue!.when(
        data: (data) {
          return SliverList(
            delegate: SliverChildListDelegate([
              for (final item in data)
                ListTile(
                  title: Text(title(item)),
                  onTap: () {
                    onItemSelected(item);
                  },
                  selected: initialSelection?.call(item) ?? false,
                ),
            ]),
          );
        },
        loading: () => const SliverFillRemaining(
          child: Center(
              child: CircularProgressIndicator(
                color: primaryColor,
              )),
        ),
        error: (error, stack) {
          return SliverFillRemaining(
              child: Center(
                  child: Text(error is String ? error : error.toString())));
        },
      );
    }else{
      return SliverList(
        delegate: SliverChildListDelegate([
          for (final item in notAsyncData)
            ListTile(
              title: Text(title(item)),
              onTap: () {
                onItemSelected(item);
              },
              selected: initialSelection?.call(item) ?? false,
            ),
        ]),
      );
    }

  }
}
