import 'package:pendonor_sukarela/models/PendonorModel.dart';
import 'package:pendonor_sukarela/services/constanst.dart';
import 'package:http/http.dart' as http;

class TelusuriPendonorService {
  PendonorModel pendonor = new PendonorModel();

  Future<List<PendonorModel>> getLatLng() async {
    var _url = Uri.parse(ApiConstants.baseUrl + '/pendonor/lat-lng');
    var res = await http.get(_url);

    return pendonor.pendonorObjectFromJson(res.body);
  }
}
