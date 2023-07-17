import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pendonor_sukarela/models/PendonorModel.dart';
import 'package:pendonor_sukarela/services/TelusuriPendonorService.dart';
import 'package:custom_info_window/custom_info_window.dart';
import 'package:pendonor_sukarela/services/constanst.dart';

class Maps extends StatefulWidget {
  const Maps({super.key});

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  static final LatLng _mapCenter = LatLng(1.474830, 124.842079);
  static final CameraPosition _initialPosition =
      CameraPosition(target: _mapCenter, zoom: 12.0, tilt: 0, bearing: 0);

  late List<PendonorModel>? _pendonor = [];
  final Set<Marker> markers = new Set();
  CustomInfoWindowController _customInfoWindowController =
      CustomInfoWindowController();

  @override
  void dispose() {
    _customInfoWindowController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _pendonor = (await TelusuriPendonorService().getLatLng());

    Future.delayed(const Duration(seconds: 1))
        .then((value) => {setState(() {})});
  }

  Set<Marker> getMarkers() {
    setState(() {
      for (var i = 0; i < _pendonor!.length; i++) {
        markers.add(
          Marker(
            markerId: MarkerId(i.toString()),
            position: LatLng(
              double.parse(_pendonor![i].latitude.toString()),
              double.parse(_pendonor![i].longtitude.toString()),
            ),
            onTap: () {
              print("Di klik");
              _customInfoWindowController.addInfoWindow!(
                Column(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              _pendonor![i].foto.toString() == ""
                                  ? Image.asset(
                                      "lib/assets/images/user.png",
                                      height: 100.0,
                                    )
                                  : Container(
                                      height: 120,
                                      width: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            ApiConstants.baseUrlStatic +
                                                "/img-pendonor/" +
                                                _pendonor![i].foto.toString(),
                                          ),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100.0)),
                                      ),
                                    ),

                              // Data Pendonor
                              Padding(padding: EdgeInsets.only(top: 8.0)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    _pendonor![i].user!.firstname.toString() +
                                        " " +
                                        _pendonor![i].user!.lastname.toString(),
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                  SizedBox(width: 5.0),
                                  _pendonor![i].status_kartu.toString() == "yes"
                                      ? Container(
                                          color: Color(0xFF3DA9FA),
                                          child: Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: Icon(
                                              Icons.check_circle,
                                              color: Colors.white,
                                            ),
                                          ),
                                        )
                                      : Container(),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Gol. Darah",
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                  Card(
                                    child: Padding(
                                      padding: EdgeInsets.all(3.0),
                                      child: Text(
                                        _pendonor![i].gol_darah.toString() ==
                                                "APLUS"
                                            ? "A+"
                                            : _pendonor![i]
                                                        .gol_darah
                                                        .toString() ==
                                                    "ABPLUS"
                                                ? "AB+"
                                                : _pendonor![i]
                                                            .gol_darah
                                                            .toString() ==
                                                        "OPLUS"
                                                    ? "O+"
                                                    : _pendonor![i]
                                                        .gol_darah
                                                        .toString(),
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    color: Colors.blue,
                                  ),
                                ],
                              ),
                              Divider(),
                              Padding(padding: EdgeInsets.only(top: 5.0)),

                              Text(
                                "Jenis Kelamin : " +
                                    _pendonor![i].jenis_kelamin.toString(),
                              ),
                              Padding(padding: EdgeInsets.only(top: 2.0)),
                              Text(
                                _pendonor![i].alamat.toString() == ""
                                    ? "Alamat Detail : -"
                                    : "Alamat Detail : " +
                                        _pendonor![i].alamat.toString(),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                  ],
                ),
                LatLng(double.parse(_pendonor![i].latitude.toString()),
                    double.parse(_pendonor![i].longtitude.toString())),
              );
            },
          ),
        );
      }
    });

    return markers;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pendonor == null || _pendonor!.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Stack(
              children: [
                GoogleMap(
                  initialCameraPosition: _initialPosition,
                  markers: getMarkers(),
                  onTap: (position) {
                    _customInfoWindowController.hideInfoWindow!();
                  },
                  onCameraMove: (position) {
                    _customInfoWindowController.onCameraMove!();
                  },
                  onMapCreated: (GoogleMapController controller) {
                    _customInfoWindowController.googleMapController =
                        controller;
                  },
                ),
                CustomInfoWindow(
                  controller: _customInfoWindowController,
                  height: 280,
                  width: 300,
                  offset: 35,
                )
              ],
            ),
    );
  }
}
