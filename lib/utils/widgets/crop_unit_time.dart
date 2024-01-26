import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:netafim_mobile/utils/helper.dart';

class CropUnitDurationInput extends StatefulWidget {
 final String value;
  const CropUnitDurationInput({Key? key, required this.onDurationChange,required this.value})
      : super(key: key);

  final Function(String duration) onDurationChange;

  @override
  State<CropUnitDurationInput> createState() => _CropUnitDurationInputState();
}

class _CropUnitDurationInputState extends State<CropUnitDurationInput> {
  late Widget textField1, textField2;
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  List<TextField> textFields = [];
  List<LogicalKeyboardKey> keys = [];
  List<FocusNode> nodes = [];
  List<int> digits = [0, 0];
  String value1 = "";
  String value2 = "";

  @override
  void initState() {
    super.initState();

    textField1 = createTextField1(widget.value.split(":")[0]);
    textField2 = createTextField2(widget.value.split(":")[1]);
  }

  Widget createTextField1(String value) {
    textEditingController1.text = value;
    value1 = value;
    TextField tf =  TextField(
      readOnly: true,
      controller: textEditingController1,
      style: TextStyle(fontSize: 20,color: Colors.grey[400]!),
      decoration: UiHelper().textFieldInputDecoration(
          borderColor: Colors.transparent,
          focusColor: Colors.transparent,
          padding: EdgeInsets.zero
      ),
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(2),
      ],
      textInputAction: TextInputAction.next,
      onChanged: (text) {

        setState(() {
          value1 = text;
          widget.onDurationChange("${value1}:${value2}");
        });
      },
    );
    textFields.add(tf);
    return Container(
      margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
      width: 30,
      child: FocusableActionDetector(
        autofocus: true,
        focusNode: FocusNode(),
        onFocusChange: (focus) {},
        child: tf,

      ),
    );
  }
  Widget createTextField2(String value) {
    textEditingController2.text = value;
    value2 = value;
    TextField tf =  TextField(
      readOnly: true,
      controller: textEditingController2,
      style: TextStyle(fontSize: 20,color: Colors.grey[400]!),
      decoration: UiHelper().textFieldInputDecoration(
        borderColor: Colors.transparent,
        focusColor: Colors.transparent,
        padding: EdgeInsets.zero
      ),
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(2),
      ],
      textInputAction: TextInputAction.next,
      onChanged: (text) {
       setState(() {
         value2 = text;
         widget.onDurationChange("${value1}:${value2}");
       });
      },
    );
    textFields.add(tf);
    return Container(
      margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
      width: 30,
      child: FocusableActionDetector(
          autofocus: true,
          focusNode: FocusNode(),
          onFocusChange: (focus) {},
          child: tf,

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: textField1),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              alignment: Alignment.topCenter,
              child: Text(
                ":",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,

              ),
            ),
            Expanded(child: textField2),
          ]),
    );
  }
}
