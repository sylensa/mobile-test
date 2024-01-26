import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../controllers/weather_controller.dart';
import '../themes/images.dart';
import '../utils/helper.dart';

class CurrentWeatherWidget extends ConsumerWidget {
  const CurrentWeatherWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(currentWeatherProvider);
    //todo: manage the tree states 1. data 2. loading 3. error
    return state.when(
      skipLoadingOnReload: true,
      data: (data) {
        return Row(
          children: [
            SvgPicture.asset("assets/icons/${data.icon}.svg",color: Colors.black,),
            const SizedBox(
              width: 5,
            ),
            Row(
              children: [
                UiHelper().appText("${data.temperature?.ceil()}", weight: FontWeight.w500, size: 20),
                data.temperatureUnitSymbol   != "fahrenheit" ?
                Container(
                  width: 5,
                  height: 5,
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black,)
                  ),
                ) :
                Row(
                  children: [
                    Container(
                      width: 5,
                      height: 5,
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black,)
                      ),
                    ),
                    UiHelper().appText("F", color: Colors.black, size: 16, align: TextAlign.center,weight: FontWeight.w500),
                  ],
                ),
              ],
            )
          ],
        );
      },
      loading: () => UiHelper().progress(size: 10),
      error: (error, stack) =>  Container(),
    );
  }

  String displayUnit(String unit) {
    if (unit == "millimeter") {
      return "mm";
    }else if(unit == "inch"){
      return "in";
    }
    return unit;
  }
}
