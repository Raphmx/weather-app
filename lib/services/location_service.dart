import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:location/location.dart';
import 'package:wheather_app/models/location_model.dart';

final locationService = Provider(
  (ref) => LocationService(ref),
);

class LocationService {
  final ProviderRef ref;
  LocationService(this.ref);

  Future<LocationModel> getLocation() async {
    final location = await Location.instance.getLocation();
    return LocationModel(lat: location.latitude, long: location.longitude);
  }
}
