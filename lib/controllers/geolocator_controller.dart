import 'package:geolocator/geolocator.dart';
import 'package:netafim_mobile/utils/helper.dart';
import 'package:permission_handler/permission_handler.dart';

class GeolocatorController{
  final Geolocator geo = Geolocator();

  Future<Position> getInitialLocation() async{
    return Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }


  Future<PermissionStatus> getPermission() async {
    final PermissionStatus permission = await Permission.location.status;
    if (permission == PermissionStatus.denied) {
      final Map<Permission, PermissionStatus> permissionStatus = await [Permission.location].request();
      return permissionStatus[Permission.location] ?? PermissionStatus.permanentlyDenied;
    } else {
      return permission;
    }
  }

  permission()async {
    final PermissionStatus permissionStatus = await getPermission();
    if (permissionStatus == PermissionStatus.granted) {
    UiHelper().toastMessage("Permission granted");
    return permissionStatus;
    }else{
      UiHelper().toastMessage("Permission denied");
      return permissionStatus;
    }
  }

}