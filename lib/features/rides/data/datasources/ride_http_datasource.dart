import 'package:driver_app/core/http/http_response_handler.dart';
import 'package:driver_app/features/rides/domain/entities/group.dart';
import 'package:http/http.dart' as http;

class RideHttpDatasource {
  final String url;
  RideHttpDatasource(this.url);
  Future<List<Group>> initGroups (String jwt) async{
    try {
      final res = await http.get(
        Uri.http(url,"api/rides/init-groups"),
        headers: {"auth": jwt}
      );
    return responseHandler(res,fromJsonT );
    } catch (e) {
      return Future.error("שגיאת תקשורת $e");
    }}
    List<Group> fromJsonT(Object? json) {
  final list = json as List;
  return list.map((e) => Group.fromJson(e as Map<String, dynamic>)).toList();
}
  }
