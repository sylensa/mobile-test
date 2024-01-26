import 'dart:async';

import 'package:flutter/material.dart';


class TextChangingView extends StatefulWidget {
  final List<String> messages;
  final Duration totalDuration;
  final Duration defaultAnimationDuration;

  TextChangingView({
    required this.messages,
    required this.totalDuration,
    this.defaultAnimationDuration = const Duration(milliseconds: 250),
    Key? key,
  })  : assert(messages.isNotEmpty, 'The messages length should not be empty'),
        super(key: key);

  @override
  State<TextChangingView> createState() => _TextChangingViewState();
}

class _TextChangingViewState extends State<TextChangingView>
    with SingleTickerProviderStateMixin {
  String message = '';
  late int index;
  late int maxIndex;
  List<int> totalTimeInMillisecondsForMessages = [];
  Timer? timer;

  @override
  void initState() {
    super.initState();
    index = 0;

    maxIndex = widget.messages.length - 1;

    totalTimeInMillisecondsForMessages = _getTotalTimeInMillisecondsForMessages(
      widget.messages,
      widget.totalDuration,
    );

    message = widget.messages[index];
    _startTextChangeTimer(durationInMs: totalTimeInMillisecondsForMessages[0]);
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: widget.defaultAnimationDuration,
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(
          opacity: animation,
          child: Align(
            alignment: Alignment.centerLeft,
            child: child,
          ),
        );
      },
      child: Text(
        getMessageUpToIndex(index, maxIndex),
        style: TextStyle(height: 1.6, color: Colors.green),
        key: ValueKey<int>(index),
      ),
    );
  }

  void _startTextChangeTimer({required int durationInMs}) {
    // timer?.cancel();
    timer = Timer(const Duration(milliseconds: 2000), () {
      if (index < maxIndex) {
        setState(() {
          message = widget.messages[++index];
        });

        _startTextChangeTimer(
          durationInMs: totalTimeInMillisecondsForMessages[index],
        );
      }
    });
  }

  List<int> _getTotalTimeInMillisecondsForMessages(
      List<String> messages,
      Duration maxDuration,
      ) {
    final calculatedTimes = <int>[];
    final charsCountList = messages.map((e) => e.length).toList();
    final totalCharsCount =
    charsCountList.reduce((value, element) => value + element);

    for (int i = 0; i < charsCountList.length; i++) {
      final charCount = charsCountList[i];
      final timeInMilliseconds = (charCount / totalCharsCount) *
          (maxDuration.inMilliseconds -
              widget.defaultAnimationDuration.inMilliseconds * messages.length);
      // calculatedTimes.add(timeInMilliseconds.toInt());
      calculatedTimes.add(timeInMilliseconds.toInt());
    }

    return calculatedTimes;
  }

  String getMessageUpToIndex(int index, int maxIndex) {
    return widget.messages.sublist(0, index + 1).join('\n');
  }
}
