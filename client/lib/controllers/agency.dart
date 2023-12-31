import 'package:client/config/core.dart';
import 'package:client/models/agency.dart';

class AgencyController {
  static Future<Agency?> getById(String agencyId) async {
    try {
      final response = await http!.get('agency/$agencyId');
      return Agency.fromMap(response.data);
    } catch (err) {
      print(err);
      return null;
    }
  }

  static Future<List<Agency>?> getAll() async {
    try {
      final response = await http!.get('agency');
      return (response.data as List).map((e) => Agency.fromMap(e)).toList();
    } catch (err) {
      print(err);
      return null;
    }
  }

  static Future<Agency?> create(Agency agency) async {
    try {
      final data = agency.asMap();
      final response = await http!.post('agency', data: data);
      if (response.statusCode == 200) {
        return Agency.fromMap(response.data);
      } else {
        return null;
      }
    } catch (err) {
      print(err);
      return null;
    }
  }
}
