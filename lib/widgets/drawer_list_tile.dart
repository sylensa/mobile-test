import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:netafim_mobile/themes/colors.dart';
import 'package:netafim_mobile/utils/app_localizations.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile(
      {Key? key,
      required this.title,
      required this.icon,
      required this.onTap,
      this.trailing,
      this.isSelected = false,
      this.isProfile = false,
      })
      : super(key: key);
  final String title;
  final String icon;
  final Function() onTap;
  final bool isSelected;
  final bool isProfile;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return isProfile ?
    ListTile(
      contentPadding: EdgeInsets.only(left: 10,right: 5,bottom: 0),
      visualDensity: VisualDensity(vertical: -4),
      title: Text(
       isProfile ? title : title.tr(context),
        style: TextStyle(color:  Colors.black,fontWeight: FontWeight.w500),
      ),
      trailing: trailing,
      onTap: onTap,

    ) :
    ListTile(
      title: Text(
        isProfile ? title : title.tr(context),
        style: TextStyle(color: isSelected ? primaryColor : Colors.black),
      ),
      trailing: trailing,
      onTap: onTap,
      leading: Container(
          width: 45,
          height: 45,
          padding:  EdgeInsets.all(isProfile ? 0 : 12),
          decoration:  BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 2),
              ),
            ],
            border: Border.all(color: isSelected ? primaryColor : Colors.transparent),
            shape: BoxShape.circle,
          ),
          child: isProfile ?
          SvgPicture.asset(
            icon,
          ) :
          SvgPicture.asset(
            icon,
            color: isSelected ? primaryColor : const Color(0xff53585C),
          )
      ),
    );
  }
}

const drawerItemDivider = Divider(indent: 0, endIndent: 0);
