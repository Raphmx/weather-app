import 'package:geocoding/geocoding.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:location/location.dart' as loc;
import 'package:wheather_app/models/location_model.dart';

final locationService = Provider(
  (ref) => LocationService(ref),
);

class LocationService {
  final ProviderRef ref;
  LocationService(this.ref);

  Future<LocationModel> getLocation() async {
    final location = await loc.Location.instance.getLocation();
    List<Placemark> place = await placemarkFromCoordinates(
        40.783333, 30.400000); //location.latitude!, location.longitude!);
    return LocationModel(
        lat: location.latitude,
        long: location.longitude,
        cityName: place[0].administrativeArea,
        townName: place[0].subAdministrativeArea);
  }
}
