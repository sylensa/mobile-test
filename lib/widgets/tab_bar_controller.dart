
import 'package:flutter/material.dart';
import 'package:netafim_mobile/themes/colors.dart';
import 'package:netafim_mobile/utils/app_localizations.dart';
import 'package:netafim_mobile/utils/helper.dart';

class TabControlWidget extends StatefulWidget {
   TabControlWidget({
    required this.tabs,
    this.tabPages,
    this.onPageChange,
    this.variant = 'default',
    this.noBorder = false,
    this.currentPageNumber = 0,
    Key? key,
  }) : super(key: key);

  final List<String> tabs;
  final List<Widget>? tabPages;
  final String variant;
  final Function? onPageChange;
  final bool noBorder ;
  int? currentPageNumber = 0;

  @override
  _TabControlWidgetState createState() => _TabControlWidgetState();
}

class _TabControlWidgetState extends State<TabControlWidget> {
  // int currentPageNumber = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: widget.currentPageNumber!);
  }

  @override
  void dispose() {
    super.dispose();
  }

  changePage(int page) {
    setState(() {
      widget.currentPageNumber = page;
      pageController.animateToPage(
        page,
        duration: Duration(milliseconds: 500),
        curve: Curves.fastLinearToSlowEaseIn,
      );
    });
    if (widget.onPageChange != null) widget.onPageChange!(page);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.variant.toUpperCase() == 'SQUARE')
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:  Container(
              width: UiHelper().appWidth(context),
              decoration: BoxDecoration(
                // color: Colors.grey[100],
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:  Radius.circular(20))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: widget.tabs.map((tab) => Expanded(
                  child: SquareTabButtonWidget(
                      onTap: changePage,
                      text: tab,
                      pageNumber: widget.tabs.indexOf(tab),
                      count: widget.tabs.length,
                      isSelected:
                      widget.currentPageNumber == widget.tabs.indexOf(tab),
                    ),
                ),
                )
                    .toList(),
              ),
            ),
          )
        else
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.tabs
                  .map(
                    (tab) => TabButtonWidget(
                  variant: widget.variant,
                  onTap: changePage,
                  text: tab,
                  pageNumber: widget.tabs.indexOf(tab),
                  count: widget.tabs.length,
                  isSelected:
                  widget.currentPageNumber == widget.tabs.indexOf(tab),
                ),
              )
                  .toList(),
            ),
          ),
        Expanded(
          child: PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: pageController,
            onPageChanged: (page) {
              setState(() {
                widget.currentPageNumber  = page;
              });
            },
            children: widget.tabPages!,
          ),
        ),
      ],
    );
  }
}

class SquareTabButtonWidget extends StatelessWidget {
  const SquareTabButtonWidget({
    required this.text,
    required this.onTap,
    required this.pageNumber,
    required this.count,
    this.isSelected = false,
    this.noBorder = false,
    Key? key,
  }) : super(key: key);

  final String text;
  final int pageNumber;
  final bool isSelected;
  final bool noBorder;
  final int count;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Feedback.wrapForTap(() {
        onTap(pageNumber);
      }, context),
      child: AnimatedContainer(
        curve: Curves.fastLinearToSlowEaseIn,
        duration: Duration(milliseconds: 300),
        height: 48.0,
        // padding: EdgeInsets.only(left: 22.0, right: 22.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isSelected ? primaryColor : Colors.grey[300]!,
              width: isSelected ? 3 : 0,
            ),
            right: BorderSide(
              color:  !noBorder ? Colors.transparent : pageNumber != 2 ? Colors.grey[300]! : Colors.transparent,
              width: 1
            ),

          ),
        ),
        child: Center(
          child: Text(
            text.tr(context),
            style: TextStyle(
              color: isSelected ? primaryColor : Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}

class TabButtonWidget extends StatelessWidget {
  const TabButtonWidget({
    required this.text,
    required this.onTap,
    required this.pageNumber,
    required this.count,
    this.isSelected= false,
    this.variant= 'default',
    Key? key,
  }) : super(key: key);

  final String text;
  final int pageNumber;
  final bool isSelected;
  final String variant;
  final int count;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: Feedback.wrapForTap(() {
            onTap(pageNumber);
          }, context),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.fastLinearToSlowEaseIn,
            height: 40.0,
            padding: EdgeInsets.only(left: 28.0, right: 28.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft:
                pageNumber == 0 ? Radius.circular(24) : Radius.circular(0),
                bottomLeft:
                pageNumber == 0 ? Radius.circular(24) : Radius.circular(0),
                topRight: pageNumber == count - 1
                    ? Radius.circular(24)
                    : Radius.circular(0),
                bottomRight: pageNumber == count - 1
                    ? Radius.circular(24)
                    : Radius.circular(0),
              ),
              color: variant.toUpperCase() == 'DEFAULT'
                  ? isSelected
                  ? Color(0xFF2589CE)
                  : Color(0xFF2A9CEA)
                  : isSelected
                  ? Colors.black
                  : Color(0x88000000),
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  color: isSelected ? Colors.white : Color(0xB3FFFFFF),
                  fontWeight: FontWeight.w500,
                  fontSize: isSelected ? 15 : 12,
                ),
              ),
            ),
          ),
        ),
        if (pageNumber != count - 1)
          Container(
            width: 0.5,
            color: Color(0x80000000),
          )
      ],
    );
  }
}
