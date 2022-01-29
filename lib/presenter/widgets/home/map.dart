import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyMap extends StatefulWidget {
  final bool isSelecting;
  const MyMap({Key? key, this.isSelecting = false}) : super(key: key);

  @override
  State<MyMap> createState() => MyMapState();
}

class MyMapState extends State<MyMap> {
  LatLng? _pickedLocation;
  void _selectLocation(LatLng position) {
    setState(() {
      _pickedLocation = position;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GoogleMap(
          zoomControlsEnabled: false,
          initialCameraPosition:
              const CameraPosition(target: LatLng(46.48, 30.71), zoom: 12),
          onTap: widget.isSelecting ? _selectLocation : null,
          markers: {
            if (_pickedLocation != null)
              Marker(
                markerId: MarkerId('m1'),
                position: _pickedLocation!,
              ),
          }),
    );
  }
}
