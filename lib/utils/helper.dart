import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:netafim_mobile/data_sources/shared_prefs.dart';
import 'package:netafim_mobile/graph.dart';
import 'package:netafim_mobile/models/crop_unit.dart';
import 'package:netafim_mobile/models/irrigation_block.dart';
import 'package:netafim_mobile/network/end_points.dart';
import 'package:netafim_mobile/pages/crop_details.dart';
import 'package:netafim_mobile/pages/overview.dart';
import 'package:netafim_mobile/themes/colors.dart';
import 'package:netafim_mobile/utils/app_localizations.dart';
import 'package:netafim_mobile/utils/hex_color_ex.dart';
import 'package:netafim_mobile/widgets/account_widget.dart';
import 'package:netafim_mobile/widgets/crop_unit_modal_view.dart';
import 'package:netafim_mobile/widgets/irrigation_block_modal.dart';
import 'package:netafim_mobile/widgets/password_widget.dart';
import 'package:netafim_mobile/widgets/quick_actions.dart';
import 'package:netafim_mobile/themes/images.dart';
import 'package:netafim_mobile/utils/widgets/text_changing_widget.dart';
import 'package:netafim_mobile/widgets/drawer_list_tile.dart';
import 'package:netafim_mobile/widgets/system_widget.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recase/recase.dart';
import 'package:url_launcher/url_launcher.dart';

String selectedRoute = '';

class UiHelper {
  static Future showSnackBar({
    required String message,
    bool success = true,
    Color? color,
    Duration duration = const Duration(seconds: 6),
    EdgeInsets? margin,
  }) async {
    Get.snackbar(
      '',
      '',
      duration: duration,
      margin: margin,
      snackPosition: SnackPosition.BOTTOM,
      animationDuration: const Duration(milliseconds: 250),
      instantInit: false,
      backgroundColor: color ?? (success ? Colors.green : Colors.red),
      titleText: Text(
        message,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
      messageText: const SizedBox.shrink(),
    );
  }

  static showSuccessMessage(
    String message, {
    Function()? initCallback,
    List<String>? messages,
    Duration? totalDuration = const Duration(seconds: 8),
    Function()? closePressCallback,
  }) {
    Get.snackbar(
      message,
      '',
      snackPosition: SnackPosition.BOTTOM,
      isDismissible: false,
      duration: const Duration(days: 1),
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(0),
      backgroundColor: Colors.green,
      animationDuration: const Duration(milliseconds: 250),
      messageText: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextChangingView(
          messages: messages ?? message.split('EOFLN'),
          totalDuration: totalDuration ?? const Duration(seconds: 8),
        ),
      ),
      titleText: Center(
        child: Align(
          alignment: Alignment.centerRight,
          child: Transform.translate(
            offset: const Offset(0, 0),
            child: IconButton(
                icon: const CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                    )),
                onPressed: () {
                  closePressCallback?.call();
                  SnackbarController.closeCurrentSnackbar();
                }),
          ),
        ),
      ),
    );
    initCallback?.call();
  }

  TextStyle appTextStyle(
      {double size = 16,
        Color? col = Colors.red,
        FontWeight weight = FontWeight.w400,

        String family = "Roboto"}) {
    return TextStyle(
        fontFamily: family, fontWeight: weight, fontSize: size, color: col);
  }

  InputDecoration textFieldInputDecoration(
      {String? hint,
        String prefix = '',
        Widget? suffix,
        Widget? prefixIcon,
        Widget? suffixIcon,
        bool enabled = true,
        double hintSize = 16,
        Color? hintColor,
        Color focusColor = Colors.grey,
        String labelText = '',
        String family = "Poppins",
        FontWeight hintWeight = FontWeight.normal,
        Color? fillColor,
        Color borderColor = Colors.grey,
        double radius = 4,
        EdgeInsetsGeometry padding =
        const EdgeInsets.fromLTRB(20.0, 10, 20.0, 0)}) {
    return  InputDecoration(
      prefixText: prefix,
      suffix: suffix,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      hintText: hint,
      labelText: labelText,
      hintStyle: appTextStyle(
        size: hintSize,
        col: hintColor,
        weight: hintWeight,
        family: family,
      ),
      alignLabelWithHint: true,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: borderColor, width: 1),
        borderRadius: BorderRadius.circular(radius),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: focusColor, width: 1),
        borderRadius: BorderRadius.circular(radius),
      ),
      focusColor: focusColor,
      enabled: enabled,
      labelStyle: appTextStyle(size: hintSize, col: hintColor),
      filled: true,
      fillColor: fillColor,
      contentPadding: padding,
    );
  }
  Widget appText(String? word,
      {double size = 15,
        FontWeight weight = FontWeight.normal,
        Color color = Colors.black,
        TextAlign align = TextAlign.justify,
        int maxLines = 5,
        double? lHeight = 1.2,
        String family = 'Roboto',
        FontStyle style = FontStyle.normal,

        int shadow = 0}) {
    return Text(
      word ?? '...',
      softWrap: true,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textAlign: align,
      style: TextStyle(
        height: lHeight,
        fontStyle: style,
        color: color,
        fontFamily: family,
        fontSize: size,
        fontWeight: weight,
        shadows:
        shadow > 0 ? elevation(color: Colors.black38, elevation: shadow) : [],
      ),
    );
  }
  Widget appTextTranslation(String? word,
      {double size = 15,
        FontWeight weight = FontWeight.normal,
        Color color = Colors.black,
        TextAlign align = TextAlign.justify,
        int maxLines = 5,
        double? lHeight = 1.2,
        String family = 'Roboto',
        FontStyle style = FontStyle.normal,
        required BuildContext context,

        int shadow = 0}) {
    return Text(
      word ?? '...',
      softWrap: true,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textAlign: align,
      style: TextStyle(
        height: lHeight,
        fontStyle: style,
        color: color,
        fontFamily: family,
        fontSize: size,
        fontWeight: weight,
        shadows:
        shadow > 0 ? elevation(color: Colors.black38, elevation: shadow) : [],
      ),
    ).tr(context);
  }
  List<BoxShadow> elevation({required Color color, required int elevation}) {
    return [
      BoxShadow(
          color: color.withOpacity(0.6),
          offset: const Offset(0.0, 4.0),
          blurRadius: 3.0 * elevation,
          spreadRadius: -1.0 * elevation),
      BoxShadow(
          color: color.withOpacity(0.44),
          offset: const Offset(0.0, 1.0),
          blurRadius: 2.2 * elevation,
          spreadRadius: 1.5),
      BoxShadow(
          color: color.withOpacity(0.12),
          offset: const Offset(0.0, 1.0),
          blurRadius: 4.6 * elevation,
          spreadRadius: 0.0),
    ];
  }

  appWidth(context) {
    return MediaQuery.of(context).size.width;
  }

  appHeight(context) {
    return MediaQuery.of(context).size.height;
  }

  List<BoxShadow> appShadow(
      Color col, double offset, double blur, double spread) {
    return [
      BoxShadow(
          blurRadius: blur,
          color: col,
          offset: const Offset(0, 2.0),
          spreadRadius: spread),
    ];
  }

  TextStyle appStyle(
      {double size = 16,
        Color? col = Colors.black,
        FontWeight weight = FontWeight.w400,
        String family = "Poppins"}) {
    return TextStyle(
        fontFamily: family, fontWeight: weight, fontSize: size, color: col);
  }

  Future<void> urlLauncher(String _url) async {
    if (!await launchUrl(Uri.parse(_url))) {
      throw 'Could not launch $_url';
    }
  }

  showLoaderDialog(BuildContext context, {String? message = "loading..."}) {
    AlertDialog alert = AlertDialog(
      content:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          progress(),
          const SizedBox(width: 10,),
          Container(
              margin: const EdgeInsets.only(left: 7),
              child: Text(
                message!,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.black),
              )),
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  Widget progress({double size = 30}) {
    return SizedBox(
        width: size,
        height: size,
        child: const CircularProgressIndicator(
          backgroundColor: primaryColor,
          // valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF00C9B9),)
        ));
  }

  generateRandom() {
    var rng = Random();
    var code = rng.nextInt(900000) + 100000;

    return code;
  }

  properCase(String txt) {
    return txt.titleCase;
  }

  capCase(String txt) {
    return txt.toUpperCase();
  }

  sentenceCase(String txt) {
    if (txt.isEmpty) return txt;
    return txt.sentenceCase;
  }

  toastMessage(String text, {bool long = false,Color color = primaryColor}) {
    Fluttertoast.showToast(
        msg: text,
        toastLength: long ? Toast.LENGTH_LONG : Toast.LENGTH_SHORT,
        backgroundColor: color,
        textColor: Colors.white);
  }

  Map replaceNulls(Map m) {
    for (var i in m.keys) {
      if (m[i] is String) {
        if (m[i] == "null") {
          m[i] = '';
        }
      } else if (m[i] == Null) {
        m[i] = '';
      } else {
        m[i] = jsonEncode(m[i]);
      }
    }
    return m;
  }

  bool appIsEmpty(value) {
    return value.toString() == '' || value == null || value == 'null';
  }

  Map stripNulls(dynamic v) {
    Map m = v.toMap();
    Map<String, String> finalMap = v.toMap();
    for (var i in m.keys) {
      if (m[i] == "null") {
        finalMap.remove(i);
      }
    }
    return finalMap;
  }

  doDelete(String urlAfterBase) async {
    var headers = {
      'Authorization': 'Bearer ${SharedPrefs.accessToken}',
      'x-api-key': 'fgy6435678hghytr534qwe567890poijhgyftr543wesdrtfyu',
      'x-client' : 'mobile'
    };
    var url = Uri.parse('${EndPoints.baseUrl}/$urlAfterBase');
    print("url: $url");
    print("headers: $headers");
    var js = await http.delete(url, headers: headers);
    var decoded;
    if (js.statusCode == 200) {
      try {
        decoded = jsonDecode(js.body);
      } catch (e) {
        print("decoded: ${js.body}");
        print(e);
      }
    } else {
      decoded = js.statusCode.toString();
    }
    return decoded;
  }

  doPost(String urlAfterBase, Map body) async {
    var headers = {
      'Authorization': 'Bearer ${SharedPrefs.accessToken}',
      'x-api-key': 'fgy6435678hghytr534qwe567890poijhgyftr543wesdrtfyu',
      'x-client' : 'mobile'
    };
    print('Calling ${EndPoints.baseUrl}/$urlAfterBase...');
    print('body $body...');
    print('headers $headers...');
    var url = Uri.parse('${EndPoints.baseUrl}/$urlAfterBase');
    var decoded;
    http.Response js;
    js = await http.post(
      url,
      body: replaceNulls(body),
      headers: headers,
    );
    print("js:${jsonEncode(js.statusCode)}");

    print("body: ${js.body}");
    try {
      decoded = jsonDecode(js.body);
    } catch (e) {
      print("post: $e");
    }
    return decoded;
  }

  doPut(String urlAfterBase, Map body) async {
    var headers = {
      'Authorization': 'Bearer ${SharedPrefs.accessToken}',
      'x-api-key': 'fgy6435678hghytr534qwe567890poijhgyftr543wesdrtfyu',
      'x-client' : 'mobile'
    };
    print('Calling ${EndPoints.baseUrl}/$urlAfterBase...');
    print('body $body...');
    print('headers $headers...');
    var url = Uri.parse('${EndPoints.baseUrl}/$urlAfterBase');
    var decoded;
    http.Response js;
    js = await http.put(
      url,
      body: replaceNulls(body),
      headers: headers,
    );
    print("js:${jsonEncode(js.statusCode)}");

    print("body: ${js.body}");
    try {
      decoded = jsonDecode(js.body);
    } catch (e) {
      print("post: $e");
    }
    return decoded;
  }

  doGet(String urlAfterBase) async {
    var headers = {
      'Authorization': 'Bearer ${SharedPrefs.accessToken}',
      'x-api-key': 'fgy6435678hghytr534qwe567890poijhgyftr543wesdrtfyu',
      'x-client' : 'mobile'
    };
    print("headers:${EndPoints.baseUrl}/$headers");
    var url = Uri.parse('${EndPoints.baseUrl}/$urlAfterBase');
    print("url: $url");
    var js;
    js = await http.get(url, headers:headers);

    var decoded;
    print("decoded: ${js.body}");
    try {
      decoded = jsonDecode(js.body);
    } catch (e) {
      print(e);
    }
    return decoded;
  }

  static Future goTo(BuildContext context, Widget target, {bool replace = false,
        PageTransitionType anim = PageTransitionType.size,
        int millis = 200,
        bool opaque = true}) {
    if (!opaque) {
      if (!replace) {
        return Navigator.of(context).push(PageRouteBuilder(
            opaque: opaque,
            pageBuilder: (BuildContext context, animation, secondaryAnimation) =>
            target,
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            }));
      } else {
        return Navigator.of(context).pushReplacement(PageRouteBuilder(
            opaque: opaque,
            pageBuilder: (BuildContext context, animation, secondaryAnimation) =>
            target,
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            }));
      }
    }
    if (!replace) {
      return Navigator.push(
          context,
          PageTransition(
              type: anim,
              duration: Duration(milliseconds: millis),
              alignment: Alignment.bottomCenter,
              child: target));
    } else
      return Navigator.pushReplacement(
          context,
          PageTransition(
              type: anim,
              duration: Duration(milliseconds: millis),
              alignment: Alignment.bottomCenter,
              child: target));
  }
  displayImage(imagePath, {double radius = 30.0, double? height, double? width}) {
    return CachedNetworkImage(
        imageUrl: imagePath,
        height: height,
        width: width,
        placeholder: (context, url) {
          return radius > 0
              ? CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: const AssetImage('assets/images/none.png'),
            radius: radius,
          )
              : const Image(
            image: AssetImage('assets/images/none.png'),
          );
        },
        errorWidget: (context, url, error) {
          return radius > 0
              ? CircleAvatar(
            backgroundColor: Colors.green,
            backgroundImage: const AssetImage('assets/images/none.png'),
            radius: radius,
          )
              : const Image(
            image: AssetImage('assets/images/none.png'),
          );
        },
        imageBuilder: (context, image) {
          return radius > 0
              ? CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: image,
            radius: radius,
          )
              : Image(
            image: image,
            fit: BoxFit.cover,
          );
        });
  }


  Widget displayCircularImage(imagePath, {double radius = 30.0}) {
    return CachedNetworkImage(
        imageUrl: imagePath,
        placeholder: (context, url) {
          return CircleAvatar(
            backgroundColor: Colors.green,
            radius: radius,
          );
        },
        imageBuilder: (context, image) {
          return CircleAvatar(
            backgroundImage: image,
            radius: radius,
          );
        });
  }


  Widget displayLocalImageDevice(String filePath, {double radius = 30.0, double? height, double? width}) {
    File file =  File(filePath);
    return radius > 20
        ? CircleAvatar(
      backgroundColor: Colors.green,
      backgroundImage: (filePath.isEmpty
          ? const AssetImage('assets/images/default.png')
          : FileImage(file)) as ImageProvider<Object>?,
      radius: radius,
    )
        : Image(
      fit: BoxFit.fitWidth,
      height: height,
      width: width,
      image: (filePath.isEmpty
          ? const AssetImage('assets/images/default.png')
          : FileImage(file)) as ImageProvider<Object>,
    );
  }

  showNoConnectionToast(BuildContext context,) {
    String message = "No Internet connection.";
    showToast(message,
        context: context,
        duration: const Duration(seconds: 10),
        backgroundColor: Colors.red,
        position: StyledToastPosition.top,
        fullWidth: true,
        onDismiss: () {});
  }
  showSuccessToast(BuildContext context,String errorMessage) {
    String message = "$errorMessage";
    showToast(message,
        context: context,
        duration: const Duration(seconds: 10),
        backgroundColor: primaryColor,
        position: StyledToastPosition.top,
        fullWidth: true,
        onDismiss: () {});
  }

  showIrrigationCropDialog({BuildContext? context, required DashboardCropUnit cropUnit,required StatusWorkspace status, String blockName = ""}) {
    // flutter defined function
   return showDialog(
      context: context!,
     useRootNavigator: false,
     barrierDismissible: true,
      builder: (BuildContext context,) {
        return AlertDialog(
          contentPadding:  EdgeInsets.zero,
          shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          content:   CropUnitModalView(cropUnit: cropUnit,status: status,blockName:blockName),

        );
      },
    );
  }
  showInfoAlert({BuildContext? context,}) {
    // flutter defined function
   return showDialog(
      context: context!,
     useRootNavigator: false,
     barrierDismissible: true,
      builder: (BuildContext context,) {
        return AlertDialog(
          contentPadding:  EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          backgroundColor: Colors.white,
          
          shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          content:Container(
              margin: EdgeInsets.symmetric(horizontal: 0),
              height: 180,
              width: UiHelper().appWidth(context),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: UiHelper().elevation(color: Colors.white, elevation: 1)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UiHelper().appText("Click to switch between modes"),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(5)

                        ),
                      ),
                      SizedBox(width: 5,),
                      UiHelper().appText("Irrigation"),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5)

                        ),
                      ),
                      SizedBox(width: 5,),
                      UiHelper().appText("Fertilization"),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                      SizedBox(width: 5,),
                      UiHelper().appText("None"),
                    ],
                  ),
                  SizedBox(height: 10,),
                  RichText(
                    text: TextSpan(
                      text: "NOTICE-",
                      style: UiHelper().appStyle(size: 18),
                      children:  [
                        TextSpan(
                          text: "once working via cloud, controller program will be changed to 2 weeks interval",
                          style: UiHelper().appStyle(size: 16),
                        )
                      ]
                    ),

                  )

                ],
              )
          ),

        );
      },
    );
  }
  showGraphInfo({BuildContext? context,String? color,String? sensorName,ChartData? chartData}) {
    // flutter defined function
   return showDialog(
      context: context!,
     useRootNavigator: false,
     barrierDismissible: true,
      builder: (BuildContext context,) {
        return AlertDialog(
          contentPadding:  EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          backgroundColor: Colors.white,

          shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color:  HexColor(color),width: 2)),
          content:Container(
              margin: EdgeInsets.symmetric(horizontal: 0),
              height: 80,
              width: UiHelper().appWidth(context),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: UiHelper().elevation(color: Colors.white, elevation: 1)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  UiHelper().appText("${DateFormat("d.LLL").format(DateTime.parse(chartData!.date.toString()))}, ${DateFormat.Hm().format(DateTime.parse(chartData.date.toString()))}",size: 14),
                  SizedBox(height: 10,),
                  RichText(
                    text: TextSpan(
                        text: "$sensorName:",
                        style: UiHelper().appStyle(size: 14,col: Colors.black),
                        children:  [
                          TextSpan(
                            text: " ${chartData.value}%",
                            style: UiHelper().appStyle(size: 14,col: Colors.black,weight: FontWeight.w600),
                          )
                        ]
                    ),

                  ),
                ],
              )
          ),

        );
      },
    );
  }
  showIrrigationBlockCropDialog({BuildContext? context,required IrrigationBlock irrigationBlock, bool showController = true}) {
    // flutter defined function
    showDialog(
      context: context!,
      useRootNavigator: false,
      barrierDismissible: true,
      builder: (BuildContext context,) {
        return AlertDialog(
          contentPadding:  EdgeInsets.zero,
          shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          content:   IrrigationBlockModalView(irrigationBlock: irrigationBlock,showController: showController,),

        );
      },
    );
  }
  showConfirmationDialog({BuildContext? context, required Function() onTap,String message = "When you change these parameters,You will update this irrigation program.",String title = "Confirmation"}) {
    showDialog(
      context: context!,
      useRootNavigator: false,
      barrierDismissible: true,
      builder: (BuildContext context,) {
        return AlertDialog(
          contentPadding:  EdgeInsets.zero,
          shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          content:   MaterialButton(
            padding: EdgeInsets.zero,
            onPressed: (){
              Navigator.pop(context);
              // goTo(context, const CropDetails());
            },
            child: SizedBox(
              height: 170,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Color(0XFFF4F7FB),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                    ),
                    child:   Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        UiHelper().appText("$title",weight: FontWeight.w500,color: title.toLowerCase() == "alert" ? Colors.red : const Color(0xFF00457C),size: 20),
                        const SizedBox(width: 10,),
                        const Icon(Icons.close,color: Colors.black,),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: UiHelper().appText(message.trim(),weight: FontWeight.w500,),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: (){
                         Navigator.pop(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[300]!),
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white
                          ),
                          child: UiHelper().appText(title.toLowerCase() == "alert" ? "No" : "Cancel",color:primaryColor,align: TextAlign.center),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      GestureDetector(
                        onTap: (){
                          print("hello");
                          onTap();
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color:title.toLowerCase() == "alert" ? Colors.red : primaryColor
                          ),
                          child: UiHelper().appText(title.toLowerCase() == "alert" ? "Yes" :"Continue",color: Colors.white,align: TextAlign.center),
                        ),
                      ),
                      const SizedBox(width: 10,),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  getSelectedRoute(String route){
   if( selectedRoute == route){
     return true;
   }
   return false;
  }

  // getUserSettingsPage(int index){
  //   if(index == 0){
  //     return const AccountPage();
  //   }else if(index == 1){
  //     return const PasswordResetPage();
  //   }else{
  //     return const SystemPage();
  //   }
  //
  // }

  getOutDays(DateTime timestamp){
    double days = DateTime.now().difference(timestamp).inHours/24;

    if(days.round() == 0){
      return "Today";
    }else if(days.round() == 1){
      return "Yesterday";
    }else if(days.round() == 2){
      return "2 days ago";
    }else if(days.round() == 3){
      return "3 days ago";
    }else{
      return "${DateFormat.yMMMEd().format(timestamp)}";
    }

  }
}
extension StringExtension on String {
  static String displayTimeAgoFromTimestamp(String timestamp) {
    final year = int.parse(timestamp.substring(0, 4));
    final month = int.parse(timestamp.substring(5, 7));
    final day = int.parse(timestamp.substring(8, 10));
    final hour = int.parse(timestamp.substring(11, 13));
    final minute = int.parse(timestamp.substring(14, 16));

    final DateTime videoDate = DateTime(year, month, day, hour, minute);
    int diffInHours = DateTime.now().difference(videoDate).inHours;

    String timeAgo = '';
    String timeUnit = '';
    int timeValue = 0;
    if (diffInHours < 0) {
      diffInHours = diffInHours * -1;
      if (diffInHours < 1) {
        final diffInMinutes = DateTime.now().difference(videoDate).inMinutes;
        timeValue = diffInMinutes;
        timeUnit = 'min';
      } else if (diffInHours < 24) {
        timeValue = diffInHours;
        timeUnit = 'hr';
      } else if (diffInHours >= 24 && diffInHours < 24 * 7) {
        timeValue = (diffInHours / 24).floor();
        timeUnit = 'day';
      } else if (diffInHours >= 24 * 7 && diffInHours < 24 * 30) {
        timeValue = (diffInHours / (24 * 7)).floor();
        timeUnit = 'wk';
      } else if (diffInHours >= 24 * 30 && diffInHours < 24 * 12 * 30) {
        timeValue = (diffInHours / (24 * 30)).floor();
        timeUnit = 'mon';
      } else {
        timeValue = (diffInHours / (24 * 365)).floor();
        timeUnit = 'yr';
      }
      timeAgo = timeValue.toString() + ' ' + timeUnit;
      timeAgo += timeValue > 1 ? '' : '';

      return 'in ' + timeAgo;
    } else {
      if (diffInHours < 1) {
        final diffInMinutes = DateTime.now().difference(videoDate).inMinutes;
        timeValue = diffInMinutes;
        timeUnit = 'min';
      } else if (diffInHours < 24) {
        timeValue = diffInHours;
        timeUnit = 'hr';
      } else if (diffInHours >= 24 && diffInHours < 24 * 7) {
        timeValue = (diffInHours / 24).floor();
        timeUnit = 'day';
      } else if (diffInHours >= 24 * 7 && diffInHours < 24 * 30) {
        timeValue = (diffInHours / (24 * 7)).floor();
        timeUnit = 'wk';
      } else if (diffInHours >= 24 * 30 && diffInHours < 24 * 12 * 30) {
        timeValue = (diffInHours / (24 * 30)).floor();
        timeUnit = 'mon';
      } else {
        timeValue = (diffInHours / (24 * 365)).floor();
        timeUnit = 'yr';
      }
      timeAgo = timeValue.toString() + ' ' + timeUnit;
      timeAgo += timeValue > 1 ? 's ago' : '';

      return timeAgo;
    }
  }
}

