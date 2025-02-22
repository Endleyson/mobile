import 'package:is_it_safe_app/src/service/api/modules/location/request/request_save_location.dart';
import 'package:is_it_safe_app/src/service/api/modules/location/response/response_save_location.dart';
import 'package:is_it_safe_app/src/service/api/modules/location/response/response_get_best_rated_places.dart';
import 'package:is_it_safe_app/src/service/api/modules/location/response/response_get_location_by_id.dart';
import 'package:is_it_safe_app/src/service/api/modules/location/response/response_get_locations_near_user.dart';

abstract class ILocationService {
  Future<ResponseGetLocationsById> getLocationById(int id);
  Future<ResponseSaveLocation> saveLocation(RequestSaveLocation request);
  Future<List<ResponseGetRatedPlaces>> getBestRatedPlaces(String? place);
  Future<void> getLocationByCep(int cep);
  Future<List<ResponseGetLocationsNearUser>> getLocationsNearUser(
    double userLatitude,
    double userLongitude,
  );
}
