import 'package:flutter/material.dart';
import 'package:netafim_mobile/utils/app_localizations.dart';

class ForceUpdatePage extends StatelessWidget {
  const ForceUpdatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
             Text('pleaseUpdateApp'.tr(context)),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {},
              child:  Text('update'.tr(context)),
            ),
          ],
        ),
      ),
    );
  }
}
