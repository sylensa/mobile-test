import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netafim_mobile/themes/colors.dart';
import 'package:netafim_mobile/utils/helper.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LoadWebView extends StatefulWidget {
 final  Map extras;
  const LoadWebView({Key? key,required this.extras}) : super(key: key);

  @override
  State<LoadWebView> createState() => _LoadWebViewState();
}

class _LoadWebViewState extends State<LoadWebView> {
  String linkName = "";
  String url = "";

  final Completer<WebViewController> _controller =
  Completer<WebViewController>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    url = widget.extras["url"];
    linkName = widget.extras["linkName"];
    print("url:$url");
    print("linkName:$linkName");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryFadeColor,
        titleSpacing: 0,
        centerTitle:  false,
        leadingWidth: 30,
        leading: IconButton(
            padding: EdgeInsets.symmetric(horizontal: 15),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              // SvgPicture.asset(Images.farmManagement),
              // const SizedBox(
              //   width: 10,
              // ),
              UiHelper().appTextTranslation(linkName,context: context,
                  color: Colors.black, weight: FontWeight.w500, size: 20),
            ],
          ),
        ),
        elevation: 1,
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
        onProgress: (int progress) {
          print("WebView is loading (progress : $progress%)");
        },

      ),
    );
  }
}
