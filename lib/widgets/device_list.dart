import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/routes.dart';
import 'package:netafim_mobile/themes/colors.dart';
import 'package:netafim_mobile/themes/images.dart';
import 'package:netafim_mobile/utils/helper.dart';
import 'package:netafim_mobile/widgets/add_device.dart';
import 'package:netafim_mobile/widgets/view_device_details.dart';

import '../controllers/devices_list_controller.dart';
import '../states/viewable_device.dart';


class CustomDeviceModel {
  String name;
  String amount;
  String factor;
  String irrigationValue;
  String type;
  String number;
  Color color;
  Color backgroundColor;
  bool expand;

  CustomDeviceModel(
      {this.name = '',
      this.amount = '',
      this.factor = '',
      this.type = '',
      this.number = '',
      this.irrigationValue = '',
      this.color = Colors.green,
      this.expand = false,
      this.backgroundColor = Colors.white});
}

class DevicesTreeView extends ConsumerWidget {
  const DevicesTreeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final devicesListState = ref.watch(devicesProvider);
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        centerTitle:  false,
        leadingWidth: 30,
        backgroundColor: primaryFadeColor,
        leading: IconButton(
          padding: EdgeInsets.symmetric(horizontal: 15),
            onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios)),
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),

          child: Row(
            children: [
              // SvgPicture.asset(Images.managementIcon),
              UiHelper().appTextTranslation("Menu.deviceManagement",context:context,color: Colors.black,weight: FontWeight.w500,size: 20),
            ],
          ),
        ),
        elevation: 1,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          devicesListState.when(
            data: (tree) {
              print('tree: ${tree.toString()}');
              return Expanded(child: DevicesListView(devices: tree));
            },
            error: (error, stackTrace) {
              print('error: $error\nstackTrace: ${stackTrace.toString()}');
              // todo: show error instead;
              return const Expanded(child: SizedBox.shrink());
            },
            loading: () {
              return const Expanded(
                child: Center(
                    child: CircularProgressIndicator(
                      color: primaryColor,
                    )),
              );
            },
          ),
          GestureDetector(
            onTap: () {
              UiHelper.goTo(context, const AddDevices());
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              margin: const EdgeInsets.symmetric(horizontal: 90),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: primaryColor)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(Images.barcode,color: primaryColor,),
                  const SizedBox(
                    width: 10,
                  ),
                  UiHelper().appTextTranslation("DeviceManagement.addDevice",color: primaryColor,context: context)
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );


  }
}

class DevicesListView extends ConsumerWidget {
  const DevicesListView({
    Key? key,
    required this.devices,
  }) : super(key: key);
  final List<ViewableDevice> devices;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      primary: false,
      padding: const EdgeInsetsDirectional.only(start: 20),
      itemCount: devices.length,
      itemBuilder: (context, index) {
        final device = devices[index];
        final isExpanded = ref.watch(isExpandedProvider(device.id));
        return Column(
          children: [
            MaterialButton(
              onPressed: () {
                if(device.isClickable){
                  context.push('${Routing.viewDeviceDetails}/${device.id}',extra: device,);
                }
              },
              child: Container(
                width: UiHelper().appWidth(context),
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                child: Row(
                  children: [
                    if (device.isExpandable)
                      InkWell(
                        onTap: () {
                          ref.read(isExpandedProvider(device.id).notifier).toggleExpanded();
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey[400]!)),
                            child: Icon(
                              isExpanded ? Icons.horizontal_rule : Icons.add,
                              color: primaryColor,
                            )),
                      )

                    else if(!device.isExpandable)
                      Icon(Icons.subdirectory_arrow_right_outlined,size: 20,color: Colors.grey,),
                    const SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "${device.icon}.svg",
                          color: Colors.black,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: UiHelper().appWidth(context)/2,
                              child: UiHelper().appText(device.name,
                                  color: Colors.black,
                                  weight: FontWeight.w500,
                                  maxLines: 1,
                                  ),
                            ),
                            if(device.type != null)
                            SizedBox(
                              width: UiHelper().appWidth(context)/2,
                              child: UiHelper().appText("${device.type ?? ""}",
                                  color: Colors.black,
                                  weight: FontWeight.w500,
                                  maxLines: 1,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                    Container(
                    width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                          color: device.isActive ? Colors.green : Colors.red,
                          shape: BoxShape.circle),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
                child: Divider(color: Colors.grey[400],)
            ),
            if (isExpanded) DevicesListView(devices: device.children),
          ],
        );
      },
    );
  }
}
