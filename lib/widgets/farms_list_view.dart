import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/farms_controller.dart';
import 'package:netafim_mobile/pages/home_page.dart';
import 'package:netafim_mobile/routes.dart';
import 'package:netafim_mobile/themes/colors.dart';
import 'package:get/get.dart' as GetX;
import 'package:netafim_mobile/utils/helper.dart';

class FarmsListView extends ConsumerWidget {
  const FarmsListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final farmsState = ref.watch(farmsProvider);
    final selectedFarmId = ref.watch(selectedFarmProvider)?.farmId;
    final state = GetX.Get.put(HomePageState());

    return farmsState.when(
      data: (farms) => Container(

        decoration: BoxDecoration(
          color: Colors.white,
          // border: Border(
          //   top: BorderSide(color: Colors.grey[200]!),
          // )
        ),
        padding:  EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const SizedBox(height: 16),
            Container(
              padding: EdgeInsets.only(left: 10),
              child:  UiHelper().appTextTranslation('selectFarm',context: context,
                  weight: FontWeight.w400
              ),
            ),
            const SizedBox(height: 8),
            Container(
              height: 200,
              color: Colors.white,
              child: ListView.separated(
                  shrinkWrap: true,
                  primary: false,
                  padding: const EdgeInsets.only(bottom: 5),
                  itemBuilder: (context, index) {
                    final isSelected = farms[index].farmId == selectedFarmId;
                    return Card(
                      shadowColor: Colors.black.withOpacity(0.2),
                      margin: EdgeInsets.zero,

                      elevation: 0,
                      child: RadioListTile<String>(
                        contentPadding: EdgeInsets.zero,
                        value: farms[index].farmId,
                        groupValue: selectedFarmId,
                        onChanged: (value) {
                          ref.read(selectedFarmIdProvider.notifier).state = value;
                          state.showMenuList.value = false;
                          state.showAlert.value = false;
                          ref.read(isFarmsListVisible.notifier).state = false;
                          // Scaffold.of(context).closeDrawer();
                          // I commented the following line because we need to change the farm and stay in the same page
                          // context.go(Routing.homePage);
                        },
                        title: Align(
                          alignment: Alignment(-1.1, 0),
                          child: Text(
                            farms[index].farmName,
                            style: TextStyle(
                                color: isSelected ? Colors.black : Colors.black,
                                fontWeight: isSelected
                                    ? FontWeight.w400
                                    : FontWeight.w400),
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(height: 0),
                  itemCount: farms.length),
            ),
          ],
        ),
      ),
      error: (error, stackTrace) => UiHelper().appTextTranslation('farmError',context: context),
      loading: () => const Center(
        child: CircularProgressIndicator(
          color: primaryColor,
        ),
      ),
    );
  }
}
