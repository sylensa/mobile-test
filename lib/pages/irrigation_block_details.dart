import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/crop_units_controller.dart';
import 'package:netafim_mobile/controllers/irrigation_blocks_controller.dart';
import 'package:netafim_mobile/controllers/update_irrigation_blocks_controller.dart';
import 'package:netafim_mobile/models/crop.dart';
import 'package:netafim_mobile/models/irrigation_block.dart';
import 'package:netafim_mobile/models/irrigation_method.dart';
import 'package:netafim_mobile/models/requests/irrigation_block_payload.dart';
import 'package:netafim_mobile/models/siol_type.dart';
import 'package:netafim_mobile/models/variety.dart';
import 'package:netafim_mobile/themes/colors.dart';
import 'package:netafim_mobile/themes/images.dart';
import 'package:netafim_mobile/utils/app_localizations.dart';
import 'package:netafim_mobile/utils/bottomsheet_ex.dart';
import 'package:netafim_mobile/utils/helper.dart';
import 'package:netafim_mobile/utils/hex_color_ex.dart';
import 'package:netafim_mobile/utils/widgets/drop_down_field.dart';
import 'package:netafim_mobile/utils/widgets/selection_list_view.dart';

class IrrigationBlockDetails extends ConsumerStatefulWidget {
  final IrrigationBlock irrigationBlock;

  const IrrigationBlockDetails({Key? key, required this.irrigationBlock})
      : super(key: key);

  @override
  ConsumerState<IrrigationBlockDetails> createState() =>
      _IrrigationBlockDetailsState();
}

class _IrrigationBlockDetailsState
    extends ConsumerState<IrrigationBlockDetails> {
  TextEditingController nameController = TextEditingController();
  TextEditingController areaController = TextEditingController();
  TextEditingController flowRateController = TextEditingController();
  TextEditingController irrigationRateController = TextEditingController();
  IrrigationMethod? selectedIrrigationMethod;
  bool isRefresh = true;
  SoilType? selectedSoilType;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController.text = widget.irrigationBlock.irrigationBlockName;
    areaController.text =
        "${widget.irrigationBlock.irrigationBlockArea!.value}";
    flowRateController.text = "${widget.irrigationBlock.flowRate!.value}";
    irrigationRateController.text =
        widget.irrigationBlock.irrigationRate!.value != null
            ? "${widget.irrigationBlock.irrigationRate!.value}"
            : "0.00";
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(updateIrrigationBlockNotifierProvider);
    final stateSoilType = ref.watch(soilTypesProvider);
    final stateCropType = ref.watch(cropsProvider);
    final stateIrrigationMethod = ref.watch(irrigationMethodsProvider);
    var selectedVariety = ref.watch(selectedVarietyProvider);
    var selectedCrop = ref.watch(selectedCropProvider);
    var selectedIrrigationMethod = ref.watch(selectedIrrigationProvider);
    var selectedSoilType = ref.watch(selectedSoilTypeProvider);
    if (isRefresh) {
      if (stateCropType.value != null) {
        for (int i = 0; i < stateCropType.value!.length; i++) {
          if (widget.irrigationBlock.cropId == stateCropType.value![i].cropId) {
            selectedCrop = stateCropType.value![i];
            final stateVariety = ref.watch(varietiesProvider(selectedCrop));
            if (stateVariety.value != null) {
              for (int i = 0; i < stateVariety.value!.length; i++) {
                if (widget.irrigationBlock.varietyId ==
                    stateVariety.value![i].varietyId) {
                  selectedVariety = stateVariety.value![i];
                }
              }
            }
          }
        }
      }

      if (stateSoilType.value != null) {
        for (int i = 0; i < stateSoilType.value!.length; i++) {
          if (widget.irrigationBlock.soilTypeId ==
              stateSoilType.value![i].soilTypeId) {
            selectedSoilType = stateSoilType.value![i];
          }
        }
      }

      if (stateIrrigationMethod.value != null) {
        for (int i = 0; i < stateIrrigationMethod.value!.length; i++) {
          if (widget.irrigationBlock.irrigationMethodId ==
              stateIrrigationMethod.value![i].irrigationMethodId) {
            selectedIrrigationMethod = stateIrrigationMethod.value![i];
          }
        }
        // isRefresh = false;
      }
    }
    ref.listen(
        updateIrrigationBlockNotifierProvider.select((value) => value.success),
        (previous, next) {
      if (next) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: snackBarColor,
          content: Text("irrigationBlockUpdatedSuccessfully".tr(context)),
          showCloseIcon: true,
          closeIconColor: Colors.white,
          action: SnackBarAction(
            label: '',
            onPressed: () =>
                ScaffoldMessenger.of(context).hideCurrentSnackBar(),
          ),
        ));
        // UiHelper().showSuccessToast(context, "Irrigation block updated successfully");
        ref.invalidate(getFarmIrrigationBlocksProvider);
      }
    });

    ref.listen(
        updateIrrigationBlockNotifierProvider.select((value) => value.error),
        (previous, next) {
      if (next != null) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: snackBarColor,
          content: Text(next),
          showCloseIcon: true,
          closeIconColor: Colors.white,
          action: SnackBarAction(
            label: '',
            onPressed: () =>
                ScaffoldMessenger.of(context).hideCurrentSnackBar(),
          ),
        ));
        // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //   content: Text(next),
        //   action: SnackBarAction(
        //     label: 'dismiss',
        //     onPressed: () =>
        //         ScaffoldMessenger.of(context).hideCurrentSnackBar(),
        //   ),
        // ));
      }
    });

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          centerTitle: false,
          backgroundColor: primaryFadeColor,
          leadingWidth: 30,
          leading: IconButton(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                // SvgPicture.asset(Images.irrigationBlocks),
                // SizedBox(width: 10,),
                UiHelper().appTextTranslation("Menu.irrigationBlock",
                    context: context,
                    color: Colors.black,
                    weight: FontWeight.w500,
                    size: 20),
              ],
            ),
          ),
          elevation: 1,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    Card(
                      margin: EdgeInsets.zero,
                      elevation: 1,
                      shadowColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(
                              color: HexColor(ref
                                  .watch(cropUnitsMapProvider)[
                                      widget.irrigationBlock.cropUnitId]
                                  ?.colorHexCode),
                              width: 12,
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                UiHelper().appText(
                                  "${widget.irrigationBlock.irrigationBlockName}",
                                ),
                                // Container(
                                //   padding: EdgeInsets.all(5),
                                //   child: SvgPicture.asset(Images.protocol),
                                //
                                // )
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                UiHelper().appTextTranslation(
                                    "IrrigationBlock.area",
                                    context: context,
                                    color: Colors.grey,
                                    size: 12),
                                UiHelper().appText(
                                    " : ${widget.irrigationBlock.irrigationBlockArea!.value}",
                                    color: Colors.grey,
                                    size: 12),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                UiHelper().appTextTranslation(
                                    "IrrigationBlock.flowRate",
                                    color: Colors.grey,
                                    size: 12,
                                    context: context),
                                UiHelper().appText(
                                    " : ${widget.irrigationBlock.flowRate!.value}",
                                    color: Colors.grey,
                                    size: 12),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    UiHelper().appTextTranslation("IrrigationBlock.name",
                        color: Colors.grey, context: context),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 40,
                      child: Center(
                        child: TextField(
                          controller: nameController,
                          style: UiHelper().appStyle(weight: FontWeight.w500),
                          decoration: UiHelper().textFieldInputDecoration(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              UiHelper().appTextTranslation(
                                  "IrrigationBlock.area",
                                  color: Colors.grey,
                                  context: context),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 40,
                                child: TextField(
                                  controller: areaController,
                                  keyboardType:
                                      const TextInputType.numberWithOptions(
                                          decimal: true),
                                  style: UiHelper()
                                      .appStyle(weight: FontWeight.w500),
                                  decoration:
                                      UiHelper().textFieldInputDecoration(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              UiHelper().appTextTranslation(
                                  "IrrigationBlock.soilType",
                                  color: Colors.grey,
                                  context: context),
                              const SizedBox(
                                height: 10,
                              ),
                              DropDownField(
                                value: selectedSoilType?.soilTypeName,
                                onTap: () {
                                  isRefresh = false;
                                  SoilTypeListView(
                                          crop: selectedCrop!,
                                          irrigationMethod:
                                              selectedIrrigationMethod!,
                                          variety: selectedVariety!,
                                          soilType: selectedSoilType)
                                      .asBottomSheet(context,
                                          title: 'Select soil type');
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              UiHelper().appTextTranslation(
                                  "IrrigationBlock.flowRate",
                                  color: Colors.grey,
                                  context: context),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 40,
                                child: TextField(
                                  controller: flowRateController,
                                  keyboardType:
                                      const TextInputType.numberWithOptions(
                                          decimal: true),
                                  style: UiHelper()
                                      .appStyle(weight: FontWeight.w500),
                                  decoration:
                                      UiHelper().textFieldInputDecoration(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              UiHelper().appTextTranslation(
                                  "IrrigationBlock.irrigationRate",
                                  color: Colors.grey,
                                  context: context),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 40,
                                child: TextField(
                                  controller: irrigationRateController,
                                  keyboardType:
                                      const TextInputType.numberWithOptions(
                                          decimal: true),
                                  style: UiHelper()
                                      .appStyle(weight: FontWeight.w500),
                                  decoration:
                                      UiHelper().textFieldInputDecoration(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              UiHelper().appTextTranslation(
                                  "IrrigationBlock.variety",
                                  color: Colors.grey,
                                  context: context),
                              const SizedBox(
                                height: 10,
                              ),
                              DropDownField(
                                value: selectedVariety?.varietyName,
                                onTap: () {
                                  isRefresh = false;
                                  VarietyListView(
                                          selectedCrop: selectedCrop!,
                                          soilType: selectedSoilType!,
                                          irrigationMethod:
                                              selectedIrrigationMethod!,
                                          variety: selectedVariety)
                                      .asBottomSheet(context,
                                          title: 'Select variety');
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              UiHelper().appTextTranslation(
                                  "IrrigationBlock.cropType",
                                  color: Colors.grey,
                                  context: context),
                              const SizedBox(
                                height: 10,
                              ),
                              DropDownField(
                                value: selectedCrop?.cropName,
                                onTap: () {
                                  isRefresh = false;
                                  CropTypeListView(
                                    soilType: selectedSoilType!,
                                    irrigationMethod: selectedIrrigationMethod!,
                                    variety: selectedVariety!,
                                    crop: selectedCrop,
                                  ).asBottomSheet(context,
                                      title: 'Select crop');
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              UiHelper().appTextTranslation(
                                  "IrrigationBlock.irrigationMethod",
                                  color: Colors.grey,
                                  context: context),
                              const SizedBox(
                                height: 10,
                              ),
                              DropDownField(
                                value: selectedIrrigationMethod
                                    ?.irrigationMethodName,
                                onTap: () {
                                  isRefresh = false;
                                  IrrigationMethodListView(
                                    soilType: selectedSoilType!,
                                    crop: selectedCrop!,
                                    variety: selectedVariety!,
                                    irrigationMethod: selectedIrrigationMethod,
                                  ).asBottomSheet(context,
                                      title: 'Select irrigation method');
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 35, vertical: 10),
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: primaryColor),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: UiHelper().appTextTranslation("cancel",
                            context: context,
                            color: primaryColor,
                            weight: FontWeight.w500,
                            align: TextAlign.center)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      final ib = widget.irrigationBlock;
                      if (nameController.text.isNotEmpty) {
                        IrrigationBlockPayload irrigationBlockPayload =
                            IrrigationBlockPayload(
                          cropId: selectedCrop?.cropId ?? ib.cropId,
                          cropUnitId: "${ib.cropUnitId}",
                          farmId: "${ib.farmId}",
                          flowRate: "${ib.flowRate!.value}",
                          irrigationBlockArea: double.parse(
                              areaController.text.isEmpty
                                  ? "0.0"
                                  : areaController.text),
                          irrigationBlockName: nameController.text,
                          irrigationMethodId:
                              selectedIrrigationMethod?.irrigationMethodId ??
                                  ib.irrigationMethodId,
                          manualIrrigationRate: double.parse(
                              irrigationRateController.text.isEmpty
                                  ? "0.00"
                                  : irrigationRateController.text),
                          soilTypeId:
                              selectedSoilType?.soilTypeId ?? ib.soilTypeId,
                          varietyId: selectedVariety?.varietyId ?? ib.varietyId,
                          data: ib.data,
                        );
                        ref
                            .read(
                                updateIrrigationBlockNotifierProvider.notifier)
                            .updateIrrigationBlock(
                                irrigationBlockId: widget.irrigationBlock.id,
                                payload: irrigationBlockPayload);
                      } else {
                        UiHelper()
                            .toastMessage("nameCannotBeEmpty".tr(context));
                      }
                    },
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 35, vertical: 10),
                        width: 120,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: state.loading
                            ? UiHelper().progress()
                            : UiHelper().appTextTranslation("save",
                                context: context,
                                color: Colors.white,
                                weight: FontWeight.w500,
                                align: TextAlign.center)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VarietyListView extends ConsumerWidget {
  const VarietyListView(
      {Key? key,
      required this.selectedCrop,
      required this.soilType,
      required this.irrigationMethod,
      required this.variety})
      : super(key: key);
  final Crop selectedCrop;
  final SoilType soilType;
  final IrrigationMethod irrigationMethod;
  final Variety? variety;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateVariety = ref.watch(varietiesProvider(selectedCrop));
    return SelectionListView<Variety>(
      asyncValue: stateVariety,
      title: (item) => item.varietyName,
      onItemSelected: (item) {
        ref.read(selectedVarietyProvider.notifier).state = item;
        ref.read(selectedCropProvider.notifier).state = selectedCrop;
        ref.read(selectedSoilTypeProvider.notifier).state = soilType;
        ref.read(selectedIrrigationProvider.notifier).state = irrigationMethod;
        Navigator.pop(context);
      },
      initialSelection: (item) => item == (variety ?? item),
    );
  }
}

class CropTypeListView extends ConsumerWidget {
  const CropTypeListView(
      {Key? key,
      required this.irrigationMethod,
      required this.soilType,
      required this.variety,
      required this.crop})
      : super(key: key);
  final SoilType soilType;
  final IrrigationMethod irrigationMethod;
  final Variety variety;
  final Crop? crop;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateCrop = ref.watch(cropsProvider);
    return SelectionListView<Crop>(
      asyncValue: stateCrop,
      title: (item) => item.cropName,
      onItemSelected: (item) {
        ref.read(selectedCropProvider.notifier).state = item;
        ref.read(selectedIrrigationProvider.notifier).state = irrigationMethod;
        ref.read(selectedSoilTypeProvider.notifier).state = soilType;
        ref.read(selectedVarietyProvider.notifier).state = variety;

        Navigator.pop(context);
      },
      initialSelection: (item) => item == (crop ?? item),
    );
  }
}

class IrrigationMethodListView extends ConsumerWidget {
  const IrrigationMethodListView(
      {Key? key,
      required this.crop,
      required this.soilType,
      required this.variety,
      required this.irrigationMethod})
      : super(key: key);
  final SoilType soilType;
  final Crop crop;
  final Variety variety;
  final IrrigationMethod? irrigationMethod;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateIrrigationMethod = ref.watch(irrigationMethodsProvider);
    return SelectionListView<IrrigationMethod>(
      asyncValue: stateIrrigationMethod,
      title: (item) => item.irrigationMethodName,
      onItemSelected: (item) {
        ref.read(selectedIrrigationProvider.notifier).state = item;
        ref.read(selectedSoilTypeProvider.notifier).state = soilType;
        ref.read(selectedCropProvider.notifier).state = crop;
        ref.read(selectedVarietyProvider.notifier).state = variety;

        Navigator.pop(context);
      },
      initialSelection: (item) => item == (irrigationMethod ?? item),
    );
  }
}

class SoilTypeListView extends ConsumerWidget {
  const SoilTypeListView(
      {Key? key,
      required this.crop,
      required this.irrigationMethod,
      required this.variety,
      required this.soilType})
      : super(key: key);
  final Crop crop;
  final IrrigationMethod irrigationMethod;
  final Variety variety;
  final SoilType? soilType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateSoilType = ref.watch(soilTypesProvider);

    return SelectionListView<SoilType>(
      asyncValue: stateSoilType,
      title: (item) => item.soilTypeName,
      onItemSelected: (item) {
        ref.read(selectedSoilTypeProvider.notifier).state = item;
        ref.read(selectedCropProvider.notifier).state = crop;
        ref.read(selectedIrrigationProvider.notifier).state = irrigationMethod;
        ref.read(selectedVarietyProvider.notifier).state = variety;
        Navigator.pop(context);
      },
      initialSelection: (item) => item == (soilType ?? item),
    );
  }
}
