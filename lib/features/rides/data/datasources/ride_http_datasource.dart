import 'package:driver_app/core/http/http_response_handler.dart';
import 'package:driver_app/features/rides/domain/entities/group.dart';
import 'package:http/http.dart' as http;

class RideHttpDatasource {
  final String url;
  RideHttpDatasource(this.url);
  Future<List<Group>> initGroups (String jwt) async{
    try {
      final res = await http.get(
        Uri.http("api/rides/init-groups"),
        headers: {"auth": jwt}
      );
    return responseHandler(res) as Future<List<Group>>;
    } catch (e) {
      return Future.error("שגיאת תקשורת $e");
    }}
  }
