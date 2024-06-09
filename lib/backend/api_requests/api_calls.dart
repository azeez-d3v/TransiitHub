import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class FoodpandaCall {
  static Future<ApiCallResponse> call({
    String? query = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'foodpanda',
      apiUrl: 'https://geocoder.deliveryhero.io/api/v2/autocomplete',
      callType: ApiCallType.GET,
      headers: {
        'authorization': 'Token 25717f6e-f634-4025-9fe7-02127c61d3c4',
        'origin': 'https://www.foodpanda.ph',
        'referrer': 'https://www.foodpanda.ph/',
        'user-agent':
            'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0',
      },
      params: {
        'query': query,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? fullAddr(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].address.main_text''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? nameAddr(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].address.formatted_address''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? idAddr(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].address.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? addressDetails(dynamic response) => getJsonField(
        response,
        r'''$.data[:].address''',
        true,
      ) as List?;
  static List<String>? subAddr(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].address.secondary_text''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class FoodpandaGetDetailsCall {
  static Future<ApiCallResponse> call({
    String? queryId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'foodpanda get details',
      apiUrl: 'https://geocoder.deliveryhero.io/api/v2/details',
      callType: ApiCallType.GET,
      headers: {
        'authorization': 'Token 25717f6e-f634-4025-9fe7-02127c61d3c4',
        'origin': 'https://www.foodpanda.ph',
        'referrer': 'https://www.foodpanda.ph/',
        'user-agent':
            'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0',
      },
      params: {
        'query_id': queryId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic locationDetails(dynamic response) => getJsonField(
        response,
        r'''$.data[:].address''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
