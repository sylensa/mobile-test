import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart' as GetX;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:latlong2/latlong.dart';
import 'package:netafim_mobile/controllers/crop_units_controller.dart';
import 'package:netafim_mobile/models/crop_unit.dart';
import 'package:netafim_mobile/models/irrigation_block.dart';
import 'package:netafim_mobile/models/status_color.dart';
import 'package:netafim_mobile/pages/home_page.dart';
import 'package:netafim_mobile/themes/colors.dart';
import 'package:netafim_mobile/themes/images.dart';
import 'package:netafim_mobile/utils/helper.dart';
import 'package:netafim_mobile/utils/hex_color_ex.dart';
import 'package:maps_toolkit/maps_toolkit.dart' as mp;

import '../controllers/irrigation_blocks_controller.dart';
import '../widgets/crop_units_list_view.dart';

class OverviewWidget extends StatefulHookConsumerWidget {
  StatusWorkspace status;

  OverviewWidget({Key? key, required this.status}) : super(key: key);

  @override
  ConsumerState<OverviewWidget> createState() => _OverviewWidgetState();
}

class _OverviewWidgetState extends ConsumerState<OverviewWidget> {
  bool selectedType = true;

  @override
  Widget build(BuildContext context) {
    final cropUnitsState = ref.watch(dashboardCropUnits);
    var state = GetX.Get.put(HomePageState());
    final searchController =
        useTextEditingController(text: state.searchText.value);
    useListenable(searchController);
    return Column(
      children: [
        GetX.Obx(
          () => _buildWidget(
              onChangeResult: (selected) {
                setState(() {
                  state.selectedType.value = selected;
                  print(state.selectedType.value);
                });
              },
              selectedType: state.selectedType.value,
              searchController: searchController,
              type1: "Home.list",
              type2: "Home.map"),
        ),
        state.selectedType.value
            ? Expanded(
                child: cropUnitsState.when(
                  data: (cropUnits) {
                    final filteredCropUnits =
                        _filteredCropUnits(searchController.text, cropUnits);
                    return CropUnitsListView(
                        cropUnits: filteredCropUnits, status: widget.status);
                  },
                  error: (error, stackTrace) {
                    debugPrint(stackTrace.toString());
                    return Center(child: Text(error.toString()));
                  },
                  loading: () => const Center(
                      child: CircularProgressIndicator(
                    color: primaryColor,
                  )),
                ),
              )
            : Expanded(
                child: PolygonPage(status: widget.status),
              )
      ],
    );
  }

  List<DashboardCropUnit> _filteredCropUnits(
      String text, List<DashboardCropUnit> cropUnits) {
    var state = GetX.Get.put(HomePageState());
    state.searchText.value = text;
    return useMemoized(
      () {
        if (text.isEmpty) {
          return cropUnits;
        }
        return cropUnits
            .where((element) =>
                element.cropUnitName.toLowerCase().contains(text.toLowerCase()))
            .toList();
      },
      [text, cropUnits],
    );
  }

  Widget _buildWidget(
      {required Function(bool selectedtbmi) onChangeResult,
      var selectedType = true,
      required TextEditingController searchController,
      String type1 = "Home.list",
      String type2 = "Home.map"}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xFFEFF1F0),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      selectedType = true;
                      setState(() {
                        onChangeResult(selectedType);
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      width: 50,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              selectedType
                                  ? Colors.white
                                  : const Color(0xFFEFF1F0),
                              selectedType
                                  ? Colors.white
                                  : const Color(0xFFEFF1F0),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              color: selectedType
                                  ? Colors.blue
                                  : const Color(0xFFEFF1F0))),
                      child: UiHelper().appTextTranslation(type1,
                          context: context,
                          align: TextAlign.center,
                          weight: FontWeight.w500,
                          color: selectedType ? Colors.blue : Colors.black),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      selectedType = false;
                      setState(() {
                        onChangeResult(selectedType);
                      });
                    },
                    child: Container(
                      width: 50,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              !selectedType
                                  ? Colors.white
                                  : const Color(0xFFEFF1F0),
                              !selectedType
                                  ? Colors.white
                                  : const Color(0xFFEFF1F0),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              color: !selectedType
                                  ? Colors.blue
                                  : const Color(0xFFEFF1F0))),
                      child: UiHelper().appTextTranslation(type2,
                          context: context,
                          align: TextAlign.center,
                          weight: FontWeight.w500,
                          color: !selectedType ? Colors.blue : Colors.black),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: SizedBox(
              height: 35,
              child: Center(
                child: TextField(
                  controller: searchController,
                  decoration: UiHelper().textFieldInputDecoration(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      suffixIcon: GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.search,
                            color: Colors.black,
                          ))),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}



class PolygonPage extends ConsumerStatefulWidget {
  StatusWorkspace status;
  DashboardCropUnit? cropUnit;

  PolygonPage({Key? key, required this.status, this.cropUnit})
      : super(key: key);


  @override
  ConsumerState<PolygonPage> createState() => _PolygonPageState();
}

class _PolygonPageState extends ConsumerState<PolygonPage> {
  List<PolygonModel> polygons = [];
  MapController mapController  = MapController();
  @override
  Widget build(BuildContext context, ) {

    // final irrigationBlockState = ref.watch(irrigationBlockMapProvider);
    final irrigationBlocks = ref.watch(allIrrigationBlocksProvider);
    polygons.clear();
    int x = 0;
    debugPrint(irrigationBlocks.length.toString());
    for (var irrigationBlock in irrigationBlocks) {
      if (irrigationBlock.data!.geolocation != null) {
        print("geolocation:${irrigationBlock.data!.geolocation!.toJson()}");

        debugPrint("${++x}");
        polygons.add(PolygonModel(
            <LatLng>[
              for (int i = 0;
              i < irrigationBlock.data!.geolocation!.vertices.length; i++)
                LatLng(irrigationBlock.data!.geolocation!.vertices[i].lat, irrigationBlock.data!.geolocation!.vertices[i].lng),
            ],
            getIrrigationColor(
              irrigationBlock,
              ref,
              widget.status,
            ),
            3,
            irrigationBlock));
      }
    }


    return Stack(
      key: UniqueKey(),
      alignment: Alignment.center,
      children: [
        MapWidget(status: widget.status,polygons: polygons,),
        widget.status == StatusWorkspace.irrigation
            ? Positioned(
          bottom: 20,
          child: Container(
            alignment: Alignment.center,
            padding:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border:
                          Border.all(color: Colors.white, width: 2)),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    UiHelper().appTextTranslation("current",context: context,
                        color: Colors.white, weight: FontWeight.w500)
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          border:
                          Border.all(color: Colors.white, width: 2)),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    UiHelper().appTextTranslation("finished",context: context,
                        color: Colors.white, weight: FontWeight.w500)
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          border:
                          Border.all(color: Colors.white, width: 2)),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    UiHelper().appTextTranslation("expected",context: context,
                        color: Colors.white, weight: FontWeight.w500)
                  ],
                ),
              ],
            ),
          ),
        )
            : widget.status == StatusWorkspace.waterBalance
            ? Positioned(
          bottom: 20,
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(
                horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(
                              color: Colors.white, width: 2)),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    UiHelper().appTextTranslation("irrigate",context: context,
                        color: Colors.white, weight: FontWeight.w500)
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(
                              color: Colors.white, width: 2)),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    UiHelper().appTextTranslation("irrigateSoon",context: context,
                        color: Colors.white, weight: FontWeight.w500)
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          border: Border.all(
                              color: Colors.white, width: 2)),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    UiHelper().appTextTranslation("good",context: context,
                        color: Colors.white, weight: FontWeight.w500)
                  ],
                ),
              ],
            ),
          ),
        )
            : const SizedBox.shrink()
      ],
    );
  }

  getIrrigationColor(
      IrrigationBlock block,
      WidgetRef ref,
      StatusWorkspace status,
      ) {
    String? irrigationColors;
    if (status == StatusWorkspace.waterBalance) {
      return block.waterBalanceColor.color;
    } else if (status == StatusWorkspace.irrigation) {
      StatusColor statusColor =
      ref.watch(irrigationBlockIrrigationColorProvider(block.id));
      print("statusColor:$statusColor");
      return statusColor.color;
    } else {
      irrigationColors =
          ref.watch(irrigationBlockOverviewColorProvider(block.id));
      return HexColor(irrigationColors);
    }
  }


}



class PolygonModel {
  PolygonModel(this.points, this.color, this.width, this.irrigationBlock);

  final List<LatLng> points;
  final Color color;
  final double width;
  final IrrigationBlock? irrigationBlock;
}

enum StatusWorkspace {
  overview,
  irrigation,
  waterBalance,
}

class MapWidget extends ConsumerStatefulWidget {
  StatusWorkspace status;
  List<PolygonModel> polygons;
   MapWidget({Key? key, required this.polygons, required this.status}) : super(key: key);

  @override
  ConsumerState<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends ConsumerState<MapWidget> {
  MapController mapController = MapController();
   findContainingCell(BuildContext context, LatLng point) {
    final mpPoint = mp.LatLng(point.latitude, point.longitude);
    for (var cell in widget.polygons) {
      final mpPolygon =
      cell.points.map((c) => mp.LatLng(c.latitude, c.longitude)).toList();
      if (mp.PolygonUtil.containsLocation(mpPoint, mpPolygon, false)) {
        print(cell.color);
        return cell.irrigationBlock!;
      }
    }
    return null;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // mapController.

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    mapController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final state = GetX.Get.put(HomePageState());

    return  Center(
      child: FlutterMap(
        mapController: mapController,
        options: MapOptions(
          zoom: 14.8,
          onTap: (TapP, lng) {
            state.showWeather.value = false;
            state.showMenuList.value = false;
            state.showAlert.value = false;
            IrrigationBlock? irrigationBlock = findContainingCell(context, lng);
            print("irrigationBlock:$irrigationBlock");
            if(irrigationBlock != null){
              final cropUnit = ref.watch(irrigationBlockCropUnitProvider(irrigationBlock.id));
              print("${cropUnit != null ? cropUnit.showController : false}");
              UiHelper().showIrrigationBlockCropDialog(context: context, irrigationBlock: irrigationBlock,showController: cropUnit != null ? cropUnit.showController : false);
            }

          },
          center: LatLng(widget.polygons.isNotEmpty ? widget.polygons.first.points.first.latitude : 32.3875436688097, widget.polygons.isNotEmpty ? widget.polygons.first.points.first.longitude : 35.0344788366296),

          // center: LatLng(32.3875436688097, 35.0344788366296),

        ),
        children: [
          TileLayer(
            urlTemplate:
            'https://api.mapbox.com/styles/v1/sylensa/clcir64z400ko14s1qzp35jjr/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1Ijoic3lsZW5zYSIsImEiOiJja2kwczNrZDYwM2ljMnVxcTlkZDE3NHN3In0.-GqVNAqAJqWMdIPxTZKPNQ',
            // urlTemplate:  'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            // userAgentPackageName: 'dev.fleaflet.flutter_map.example',

          ),
          PolygonLayer(polygons: [

            for (int i = 0; i < widget.polygons.length; i++)
              Polygon(
                  points: widget.polygons[i].points,
                  isFilled: true,

                  //
                  color: widget.polygons[i].color,
                  // By default it's false
                  borderColor: Colors.white,
                  borderStrokeWidth: 4,
                  label:
                  "${widget.polygons[i].irrigationBlock!.irrigationBlockName}"),
          ]),
        ],
      ),
    );
  }
}
