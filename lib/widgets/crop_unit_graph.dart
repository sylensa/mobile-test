import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/themes/colors.dart';
import 'package:netafim_mobile/utils/helper.dart';
import 'package:netafim_mobile/widgets/Graphs_list_view.dart';

import '../controllers/graph_controller.dart';
import '../controllers/graph_selection_controller.dart';
import 'graph_date_range_options.dart';
import 'graph_filter_widget.dart';

class CropUnitGraphWidget extends ConsumerStatefulWidget {
  const CropUnitGraphWidget({Key? key, required this.cropUnitId,required this.blockName}) : super(key: key);
  final String cropUnitId;
  final String blockName;

  @override
  ConsumerState<CropUnitGraphWidget> createState() => _CropUnitGraphState();
}

class _CropUnitGraphState extends ConsumerState<CropUnitGraphWidget> {
  GlobalKey<ScaffoldState> scaffold = GlobalKey();
  List _selectedDateRange = [
    GraphDateRanges.sevenDays.display,
    DateTimeRange(
        start: DateTime.now().subtract(const Duration(days: 7)),
        end: DateTime.now()),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffold,
      drawer: menuPage(),
      body: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: MaterialButton(
                  onPressed: () {
                    scaffold.currentState!.openDrawer();
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: UiHelper().appTextTranslation("sensors",
                        context: context, color: primaryColor),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.grey[300]!)),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () async {
                    final result = await showModalBottomSheet(
                      context: context,
                      showDragHandle: true,
                      useSafeArea: true,
                      builder: (context) {
                        return GraphDateRangeOptions(
                          selectedDateRange: _selectedDateRange,
                        );
                      },
                    );
                    if (result != null) {
                      setState(() {
                        _selectedDateRange = [...result];
                        ref.read(graphDateRangeProvider.notifier).state = result[1];
                      });
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 8, left: 12, right: 8, bottom: 8),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 0.50, color: Color(0xFFCED3D9)),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            _selectedDateRange.first,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        const Icon(Icons.keyboard_arrow_down,
                            color: Colors.black),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
           GraphsListView(blockName: widget.blockName,),
        ],
      ),
    );
  }

  menuPage() {
    return Container(
      width: UiHelper().appWidth(context) * 0.8,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(10))),
      child: GraphFilterWidget(cropUnitId: widget.cropUnitId),
    );
  }

  deviceNameSelection(
      {String name = "",
      String id = "",
      int index = 0,
      bool isIosGroup = false}) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.only(left: 60, right: 20),
        child: Column(
          children: [
            Row(
              children: [
                if (isIosGroup)
                  Icon(Icons.keyboard_arrow_up,
                      color: Colors.black.withOpacity(0.7)),
                Expanded(
                    child: UiHelper().appText(
                        isIosGroup ? name.split(" ").first : name,
                        weight: FontWeight.normal,
                        color: Colors.black.withOpacity(0.7))),
                Expanded(child: Container()),
                SizedBox(
                  width: 30,
                  height: 30,
                  child: Checkbox(value: false, onChanged: (value) {}),
                )
              ],
            ),
            if (isIosGroup)
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Expanded(
                        child: UiHelper().appText(name.split(" ").last,
                            weight: FontWeight.normal,
                            color: Colors.black.withOpacity(0.7))),
                    Expanded(child: Container()),
                    SizedBox(
                      width: 30,
                      height: 30,
                      child: Checkbox(value: false, onChanged: (value) {}),
                    )
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

// class MenuPage extends StatefulWidget {
//   const MenuPage({Key? key}) : super(key: key);
//   @override
//   State<MenuPage> createState() => _MenuPageState();
// }
//
// class _MenuPageState extends State<MenuPage> {
//   final ScrollController controller = ScrollController();
//   final ScrollController scrollChildController = ScrollController();
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: UiHelper().appWidth(context) * 0.7,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.only(topRight: Radius.circular(10))
//       ),
//       child: Column(
//         children: [
//           Container(
//             padding: EdgeInsets.only(left: 20,right: 20,top: 10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text(
//                   "Sensors",
//                   style: TextStyle(
//                     color: Color(0xFF717171),
//                     fontSize: 14,
//                   ),
//                 ),
//                 Container(
//
//                   child: GestureDetector(
//                     onTap: (){
//                       Navigator.pop(context);
//                     },
//                       child: const Icon(Icons.close)
//                   ),
//                 )
//               ],
//             ),
//           ),
//           Divider(),
//           weeklyRec.when(
//             data: (cropUnits) {
//               if (cropUnits.days.isEmpty) {
//                 return const Center(child: Text('No crop units found'));
//               }
//               if (cropUnits.protocol!.seasonStatus!.toLowerCase() == "pending") {
//                 return Center(child: UiHelper().appText("No weekly recordings"));
//
//               }
//               return   Expanded(
//                   child: ListView.builder(
//                       physics: ClampingScrollPhysics(),
//                       itemCount: 2,
//                       itemBuilder: (BuildContext context, int index){
//                         return Column(
//                           children: [
//                             Column(
//                               children: [
//                                 Container(
//                                   padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
//                                   child: Row(
//                                     children: [
//                                       Icon(Icons.arrow_back_ios,color: Colors.black.withOpacity(0.7),size: 18,),
//                                       UiHelper().appText("Block ${index + 1}",weight: FontWeight.normal,color: Colors.black.withOpacity(0.7)),
//                                       Expanded(child: Container()),
//                                       Icon(Icons.arrow_forward_ios,color: Colors.black.withOpacity(0.7),size: 18,),
//                                     ],
//                                   ),
//                                 ),
//                                 Divider()
//                               ],
//                             ),
//                             for(int i = 0; i < 3; i++)
//                               Container(
//                                 height: 100,
//                                 child: Scrollbar(
//                                   child: SingleChildScrollView(
//                                     scrollDirection: Axis.vertical,
//                                     controller: controller,
//                                     physics: ClampingScrollPhysics(),
//                                     child: Column(
//                                       children: [
//                                         Column(
//                                           children: [
//                                             Container(
//                                               padding: EdgeInsets.only(left: 35,right: 20),
//                                               child: Row(
//                                                 children: [
//                                                   Icon(Icons.keyboard_arrow_up,color: Colors.black.withOpacity(0.7)),
//                                                   UiHelper().appText("Echo ${i + 1}",weight: FontWeight.normal,color: Colors.black.withOpacity(0.7)),
//                                                   Expanded(child: Container()),
//                                                   Container(
//                                                     width: 30,
//                                                     height: 30,
//                                                     child: Checkbox(
//                                                         value: true,
//                                                         onChanged: (value){
//
//                                                         }),
//                                                   )
//                                                 ],
//                                               ),
//                                             ),
//                                             for(int t = 0; t < 5; t++)
//                                               Container(
//                                                 padding: EdgeInsets.only(left: 60,right: 20),
//                                                 child: Row(
//                                                   children: [
//                                                     UiHelper().appText("Tens ${t + 1}",weight: FontWeight.normal,color: Colors.black.withOpacity(0.7)),
//                                                     Expanded(child: Container()),
//                                                     Container(
//                                                       width: 30,
//                                                       height: 30,
//                                                       child: Checkbox(
//                                                           value: true,
//                                                           onChanged: (value){
//
//                                                           }),
//                                                     )
//                                                   ],
//                                                 ),
//                                               ),
//                                             Divider(),
//                                           ],
//                                         )
//
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//
//                           ],
//
//                         );
//                       })
//               );
//             },
//             error: (error, stackTrace) {
//               debugPrint(stackTrace.toString());
//               return const Center(child: Text('No recommendations'));
//             },
//             loading: () => const Center(
//                 child: CircularProgressIndicator(
//                   color: primaryColor,
//                 )),
//           ),
//
//         ],
//       ),
//     );
//   }
// }
