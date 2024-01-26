import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart' as GetX;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:latlong2/latlong.dart';
import 'package:netafim_mobile/controllers/crop_units_controller.dart';
import 'package:netafim_mobile/controllers/geolocator_controller.dart';
import 'package:netafim_mobile/models/crop_unit.dart';
import 'package:netafim_mobile/models/irrigation_block.dart';
import 'package:netafim_mobile/pages/home_page.dart';
import 'package:netafim_mobile/themes/colors.dart';
import 'package:netafim_mobile/themes/images.dart';
import 'package:netafim_mobile/utils/helper.dart';
import 'package:netafim_mobile/utils/hex_color_ex.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:maps_toolkit/maps_toolkit.dart' as mp;

class IrrigationWidget extends StatefulWidget {
  const IrrigationWidget({Key? key}) : super(key: key);

  @override
  State<IrrigationWidget> createState() => _IrrigationWidgetState();
}

class _IrrigationWidgetState extends State<IrrigationWidget> {
  final geoController = GeolocatorController();
  Position? currentPosition;

  askPermission() async {
    final PermissionStatus permissionStatus = await geoController.permission();
    if (permissionStatus.isGranted) {
      currentPosition = await geoController.getInitialLocation();
      setState(() {});
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // askPermission();
  }

  @override
  Widget build(BuildContext context) {
    var state = GetX.Get.put(HomePageState());
    return  GetX.Obx(() =>
        Column(
      children: [
        _buildWidget(
            onChangeResult: (selected) {
              setState(() {
               state.selectedType.value = selected;
                print(state.selectedType.value);
              });
            },
            selectedType: state.selectedType.value,
            type1: "List",
            type2: "Map"),
        state.selectedType.value
            ? const CropUnitPage()
            : Expanded(
                child: PolygonPage(),
              )
      ],
    ));
  }

  Widget _buildWidget(
      {required Function(bool selectedtbmi) onChangeResult,
      var selectedType = true,
      String type1 = "List",
      String type2 = "Map"}) {
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
                      child: UiHelper().appText(type1,
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
                      child: UiHelper().appText(type2,
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
          Expanded(
            child: SizedBox(
              height: 35,
              child: Center(
                child: TextField(
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

class CropUnitPage extends ConsumerStatefulWidget {
  const CropUnitPage({Key? key}) : super(key: key);

  @override
  ConsumerState<CropUnitPage> createState() => _CropUnitPageState();
}

class _CropUnitPageState extends ConsumerState<CropUnitPage> {
  @override
  Widget build(BuildContext context) {
    final cropUnitsState = ref.watch(dashboardCropUnits);
    return Expanded(
      child: cropUnitsState.when(
        data: (cropUnits) {
          if (cropUnits.isEmpty) {
            return const Center(child: Text('No crop units found'));
          }
          return ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemBuilder: (context, index) =>
                CropUnitListItem(cropUnit: cropUnits[index]),
            separatorBuilder: (context, index) => const SizedBox(height: 4),
            itemCount: cropUnits.length,
          );
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
    );
  }
}

class CropUnitListItem extends ConsumerWidget {
  const CropUnitListItem({
    Key? key,
    required this.cropUnit,
  }) : super(key: key);
  final DashboardCropUnit cropUnit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final irrigationState =
        ref.watch(cropUnitNextIrrigationStateProvider(cropUnit.cropUnitId));
    return GestureDetector(
      onTap: () {
        // UiHelper().showIrrigationCropDialog(context: context, cropUnit: cropUnit);
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border(
                left: BorderSide(
              color: HexColor(cropUnit.colorHexCode),
              width: 12,
              style: BorderStyle.solid,
            )),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                cropUnit.cropUnitName,
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(irrigationState),
                  const Spacer(),
                  const SizedBox(
                      height: 16,
                      child: VerticalDivider(color: Colors.black, width: 20)),
                  Expanded(
                    child: Text(cropUnit.irrigationProgram?.irrigationValue??''),
                    // child: Text(
                    //     '${cropUnit.irrigationProgram?.irrigationQuantity!.toStringAsFixed(2) ?? ''}${cropUnit.irrigationProgram?.irrigationQuantityUom ?? ''}'),
                  ),
                  if(cropUnit.showCloudIcon)
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: cropUnit.syncWithController ? darkBlueTextColor : Colors.white
                          ),
                          child: Icon(Icons.cloud,color: cropUnit.syncWithController ? Colors.white : primaryColor,size: 12,),
                        ),
                        SizedBox(width: 5,),
                      ],
                    ),

                  if(cropUnit.showLeafIcon)
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: cropUnit.syncWithController ? darkBlueTextColor : Colors.white
                          ),
                          child:  SvgPicture.asset(Images.leaf,color: cropUnit.syncWithController ? Colors.white : primaryColor),
                        ),
                        SizedBox(width: 5,),
                      ],
                    ),
                  if(cropUnit.showPinIcon)
                    Row(
                      children: [
                        Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: cropUnit.syncWithController ? darkBlueTextColor : Colors.white
                            ),
                            child: Icon(Icons.push_pin_outlined,color: cropUnit.syncWithController ? Colors.white : primaryColor,size: 20,)
                        ),
                        SizedBox(width: 5,),
                      ],
                    ),
                  if(cropUnit.showController)
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: cropUnit.syncWithController ? darkBlueTextColor : Colors.white
                          ),
                          child:  SvgPicture.asset(Images.device,color: cropUnit.syncWithController ? Colors.white : primaryColor),
                      ),

                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class MapWidget extends ConsumerWidget {
//   Position? currentPosition;
//
//   MapWidget({super.key, this.currentPosition});
//
//   List<PolygonModel> polygons = [];
//   int selectedIndex = -1;
//   late MapZoomPanBehavior zoomPanBehavior;
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final irrigationBlockState = ref.watch(irrigationBlockMapProvider);
//     // for (var irrigationBlock in irrigationBlockState.entries) {
//     //   print("geolocation:${irrigationBlock.value.data!.geolocation}");
//     //   if (irrigationBlock.value.data!.geolocation != null) {
//     //     polygons.add(PolygonModel(<MapLatLng>[
//     //       for (int i = 0;
//     //           i < irrigationBlock.value.data!.geolocation!.vertices.length;
//     //           i++)
//     //         MapLatLng(irrigationBlock.value.data!.geolocation!.vertices[i].lat,
//     //             irrigationBlock.value.data!.geolocation!.vertices[i].lng),
//     //     ], Colors.greenAccent, 3, irrigationBlock.value));
//     //   }
//     // }
//     return Center(
//       child: SfMaps(
//         layers: [
//           const MapShapeLayer(
//               source: MapShapeSource.network(
//             'http://www.json-generator.com/api/json/get/bVqXoJvfjC?indent=2',
//             shapeDataField: 'name',
//           )),
//           MapTileLayer(
//             zoomPanBehavior: MapZoomPanBehavior(zoomLevel: 20),
//             initialZoomLevel: 15,
//             urlTemplate:
//                 'https://api.mapbox.com/styles/v1/sylensa/${AppConstants.mapBoxStyleId}/tiles/256/{z}/{x}/{y}@2x?access_token=${AppConstants.mapBoxAccessToken}',
//             initialFocalLatLng:
//                 const MapLatLng(32.3875436688097, 35.0344788366296),
//             tooltipSettings: const MapTooltipSettings(
//               color: Colors.white,
//               strokeColor: Colors.teal,
//               strokeWidth: 2,
//             ),
//             sublayers: [
//               MapPolygonLayer(
//                 polygons: List<MapPolygon>.generate(
//                   polygons.length,
//                   (int index) {
//                     return MapPolygon(
//                         points: polygons[index].points,
//                         strokeWidth: polygons[index].width,
//                         color:
//                             selectedIndex == index ? Colors.pink : Colors.blue,
//                         onTap: () {
//                           UiHelper().showIrrigationBlockCropDialog(
//                               context: context,
//                               irrigationBlock: polygons[index].irrigationBlock);
//                         });
//                   },
//                 ).toSet(),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

class PolygonPage extends ConsumerWidget {
  PolygonPage({Key? key}) : super(key: key);
  List<PolygonModel> polygons = [];
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final state = GetX.Get.put(HomePageState());
    final irrigationBlockState = ref.watch(irrigationBlockMapProvider);
    for (var irrigationBlock in irrigationBlockState.entries) {
      print("geolocation:${irrigationBlock.value.data!.geolocation}");
      if(irrigationBlock.value.data!.geolocation != null){
        polygons.add(
            PolygonModel(<LatLng>[
              for(int i =0; i < irrigationBlock.value.data!.geolocation!.vertices.length; i++)
                LatLng(irrigationBlock.value.data!.geolocation!.vertices[i].lat, irrigationBlock.value.data!.geolocation!.vertices[i].lng),
            ],Colors.blue,3,irrigationBlock.value));
      }
    }



    return  Stack(
      alignment: Alignment.center,
      children: [
        Center(
          child: FlutterMap(
            options: MapOptions(
              onTap: (TapP, lng){
                state.showWeather.value = false;
                state.showMenuList.value = false;
                state.showAlert.value = false;
                var res = findContainingCell(context,lng);
                print("res:$res");
              },
              center: LatLng(32.3875436688097, 35.0344788366296),
              zoom: 18,
              enableScrollWheel: true,
            ),


            children: [

              TileLayer(
                urlTemplate: 'https://api.mapbox.com/styles/v1/sylensa/clcir64z400ko14s1qzp35jjr/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1Ijoic3lsZW5zYSIsImEiOiJja2kwczNrZDYwM2ljMnVxcTlkZDE3NHN3In0.-GqVNAqAJqWMdIPxTZKPNQ',
                // urlTemplate:  'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'dev.fleaflet.flutter_map.example',

              ),

              PolygonLayer(
                  polygons: [
                    for(int  i = 0; i < polygons.length; i++)
                      Polygon(
                          points: polygons[i].points,
                          isFilled: true, //
                          color: polygons[i].color,// By default it's false
                          borderColor: polygons[i].color,
                          borderStrokeWidth: 4,
                          label: "${polygons[i].irrigationBlock!.irrigationBlockName}"
                      ),
                    // Polygon(
                    //   points: filledPoints,
                    //   isFilled: true,
                    //   color: Colors.purple,
                    //   borderColor: Colors.purple,
                    //   borderStrokeWidth: 4,
                    // ),
                    // Polygon(
                    //   points: notFilledDotedPoints,
                    //   isFilled: false,
                    //   isDotted: true,
                    //   borderColor: Colors.green,
                    //   borderStrokeWidth: 4,
                    // ),
                    // Polygon(
                    //   points: filledDotedPoints,
                    //   isFilled: true,
                    //   isDotted: true,
                    //   borderStrokeWidth: 4,
                    //   borderColor: Colors.lightBlue,
                    //   color: Colors.lightBlue,
                    // ),
                    // Polygon(
                    //   points: labelPoints,
                    //   borderStrokeWidth: 4,
                    //   borderColor: Colors.purple,
                    //   label: "Label!",
                    //
                    //
                    // ),
                    // Polygon(
                    //
                    //     points: labelRotatedPoints,
                    //     borderStrokeWidth: 4,
                    //     borderColor: Colors.purple,
                    //     label: "Rotated!",
                    //     rotateLabel: true),

                  ]),
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
              borderRadius: BorderRadius.circular(5)
            ),
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
                        border: Border.all(color: Colors.white,width: 2)
                      ),
                    ),
                    SizedBox(width: 5,),
                    UiHelper().appText("(fr)Current",color: Colors.white,weight: FontWeight.w500)
                  ],
                ),
                SizedBox(width: 10,),
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(color: Colors.white,width: 2)
                      ),
                    ),
                    SizedBox(width: 5,),
                    UiHelper().appText("(fr)Finished",color: Colors.white,weight: FontWeight.w500)
                  ],
                ),
                SizedBox(width: 10,),
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(color: Colors.white,width: 2)
                      ),
                    ),
                    SizedBox(width: 5,),
                    UiHelper().appText("(fr)Expected",color: Colors.white,weight: FontWeight.w500)
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }



  PolygonModel? findContainingCell(BuildContext context,LatLng point) {
    final mpPoint = mp.LatLng(point.latitude, point.longitude);
    for (var cell in polygons) {
      final mpPolygon =
      cell.points.map((c) => mp.LatLng(c.latitude, c.longitude)).toList();
      if (mp.PolygonUtil.containsLocation(mpPoint, mpPolygon, false)) {
        print(cell.color);
        UiHelper().showIrrigationBlockCropDialog(context: context, irrigationBlock: cell.irrigationBlock!);
      }
    }
    return null;
  }

}

class PolygonModel {
  PolygonModel(this.points, this.color,this.width,this.irrigationBlock);
  final List<LatLng> points;
  final Color color;
  final double width;
  final IrrigationBlock? irrigationBlock;
}

