import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

int? calculateDays(DateTime? date) {
  // Calculates the days between current date and patameter date
  if (date == null) {
    return null;
  }
  final now = DateTime.now();
  final difference = date.difference(now).inDays;
  return difference.abs();
}

String? jsonToLatLong(dynamic jSONCoordinate) {
  if (jSONCoordinate == null) {
    return null;
  }

  Map<String, dynamic> json;
  if (jSONCoordinate is String) {
    try {
      json = jsonDecode(jSONCoordinate);
    } catch (e) {
      // If jsonDecode fails, return null
      return null;
    }
  } else if (jSONCoordinate is Map<String, dynamic>) {
    json = jSONCoordinate;
  } else {
    // If jSONCoordinate is neither a String nor a Map<String, dynamic>, return null
    return null;
  }

  final double? lat = json['latitude'];
  final double? lng = json['longitude'];

  if (lat != null && lng != null) {
    return '$lat,$lng';
  } else {
    return null;
  }
}

LatLng? cenvertToLatLng(String? latlng) {
  // convert latlng string to latlng
  if (latlng == null) {
    return null;
  }
  final latLngList = latlng.split(',');
  if (latLngList.length != 2) {
    return null;
  }
  final latitude = double.tryParse(latLngList[0]);
  final longitude = double.tryParse(latLngList[1]);
  if (latitude == null || longitude == null) {
    return null;
  }
  return LatLng(latitude, longitude);
}

List<LatLng>? latlnglist(
  List<double>? latitude,
  List<double>? longitude,
) {
  // return latitude and longitude combined
  if (latitude == null || longitude == null) {
    return null;
  }
  if (latitude.length != longitude.length) {
    return null;
  }
  final List<LatLng> latLngList = [];
  for (int i = 0; i < latitude.length; i++) {
    latLngList.add(LatLng(latitude[i], longitude[i]));
  }
  return latLngList;
}

String? splitstringbythree(String? param) {
  // return the split 9 char string by hypen
  if (param == null || param.length != 9) {
    return null;
  }
  return '${param.substring(0, 3)}-${param.substring(3, 6)}-${param.substring(6)}';
}
