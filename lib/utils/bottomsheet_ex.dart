import 'package:flutter/material.dart';

extension PopupExtention on Widget {
  // void asBottomSheet(
  //     BuildContext context, {
  //       String? title,
  //       bool isDismissible = true,
  //       bool enableDrag = true,
  //       Widget? action,
  //       bool isScrollControlled = true,
  //     }) {
  //   showModalBottomSheet(
  //       isDismissible: isDismissible,
  //       context: context,
  //       enableDrag: enableDrag,
  //       isScrollControlled: isScrollControlled,
  //       shape: const RoundedRectangleBorder(
  //         borderRadius: BorderRadius.vertical(
  //           top: Radius.circular(24),
  //         ),
  //       ),
  //       useRootNavigator: true,
  //       clipBehavior: Clip.antiAliasWithSaveLayer,
  //       constraints: BoxConstraints(
  //           maxHeight: MediaQuery.of(context).size.height * 0.90),
  //       builder: (c) => SafeArea(
  //         child: Column(mainAxisSize: MainAxisSize.min, children: [
  //           const SizedBox(
  //             height: 10,
  //           ),
  //           Container(
  //             decoration: BoxDecoration(
  //                 color: Colors.grey.shade300,
  //                 borderRadius:
  //                 const BorderRadius.all(Radius.circular(10))),
  //             height: 6,
  //             width: 60,
  //           ),
  //           Padding(
  //             padding:
  //             const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
  //             child: Column(
  //               children: [
  //                 if (title != null || action != null)
  //                   Stack(
  //                     alignment: Alignment.center,
  //                     children: [
  //                       if (title != null)
  //                         Center(
  //                           child: Text(
  //                             title,
  //                           ),
  //                         ),
  //                       if (action != null)
  //                         Align(
  //                             alignment: Alignment.centerRight,
  //                             child: action),
  //                     ],
  //                   ),
  //                 this,
  //               ],
  //             ),
  //           ),
  //         ]),
  //       ));
  // }

  asBottomSheet(BuildContext context, {String? title}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return DraggableScrollableSheet(
          expand: false,
          maxChildSize: 0.95,
          minChildSize: 0.25,
          builder: (context, controller) {
            return CustomScrollView(
              controller: controller,
              slivers: [
                SliverAppBar(
                  floating: true,
                  pinned: true,
                  automaticallyImplyLeading: false,
                  title: Text(
                    title ?? '',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.close, color: Colors.black),
                    )
                  ],
                ),
                this,
              ],
            );
          },
        );
      },
    );
  }
}
