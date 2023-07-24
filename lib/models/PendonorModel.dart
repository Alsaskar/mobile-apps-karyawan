import 'dart:convert';

import 'package:pendonor_sukarela/models/UserModel.dart';

class PendonorModel {
  PendonorModel({
    this.userId,
    this.nomor_id,
    this.tempat_lahir,
    this.tgl_lahir,
    this.foto,
    this.jenis_kelamin,
    this.gol_darah,
    this.latitude,
    this.longtitude,
    this.alamat,
    this.status_kartu,
    this.user,
  });

  int? userId;
  int? nomor_id;
  String? tempat_lahir;
  String? tgl_lahir;
  String? foto;
  String? jenis_kelamin;
  String? gol_darah;
  double? latitude;
  double? longtitude;
  String? alamat;
  String? status_kartu;
  UserModel? user;

  factory PendonorModel.fromJson(Map<String, dynamic> object) {
    var _userId =
        object['userId'] == null ? 0 : int.parse(object['userId'].toString());

    var _nomorId = object['nomor_id'] == null
        ? 0
        : int.parse(object['nomor_id'].toString());

    var _latitude = object['latitude'] == null
        ? 0.0
        : double.parse(object['latitude'].toString());

    var _longtitude = object['longtitude'] == null
        ? 0.0
        : double.parse(object['longtitude'].toString());

    return PendonorModel(
      userId: _userId,
      nomor_id: _nomorId,
      tempat_lahir: object['tempat_lahir'],
      tgl_lahir: object['tgl_lahir'],
      foto: object['foto'],
      jenis_kelamin: object['jenis_kelamin'],
      gol_darah: object['gol_darah'],
      latitude: _latitude,
      longtitude: _longtitude,
      alamat: object['alamat'],
      status_kartu: object['status_kartu'],
      user: UserModel.fromJson(object['user']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "userId": userId,
      "nomor_id": nomor_id,
      "tempat_lahir": tempat_lahir,
      "tgl_lahir": tgl_lahir,
      "foto": foto,
      "jenis_kelamin": jenis_kelamin,
      "gol_darah": gol_darah,
      "latitude": latitude,
      "longtitude": longtitude,
      "alamat": alamat,
      "status_kartu": status_kartu,
      "user": user?.toJson()
    };
  }

  // from json - with object
  List<PendonorModel> pendonorObjectFromJson(String jsonData) {
    final data = json.decode(jsonData)['result'];

    return List<PendonorModel>.from(
        data.map((item) => PendonorModel.fromJson(item)));
  }

  // from json - without object
  List<PendonorModel> pendonorFromJson(String jsonData) {
    final data = json.decode(jsonData);

    return List<PendonorModel>.from(
        data.map((item) => PendonorModel.fromJson(item)));
  }

  String pendonorToJson(PendonorModel pendonor) {
    final jsonData = pendonor.toJson();
    return json.encode(jsonData);
  }
}
