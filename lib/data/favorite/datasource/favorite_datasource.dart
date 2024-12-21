import 'package:tubes2_uas_kelompok1/core/api_services/dio_module.dart';
import 'package:tubes2_uas_kelompok1/core/api_services/endpoint.dart';
import 'package:tubes2_uas_kelompok1/data/favorite/requestsmodel/favorite_requests_model.dart';
import 'package:tubes2_uas_kelompok1/data/favorite/responsesmodel/favorite_responses_model.dart';
import 'package:tubes2_uas_kelompok1/data/favorite/responsesmodel/favorite_responses_model_delete.dart';
import 'package:tubes2_uas_kelompok1/data/favorite/responsesmodel/favorite_responses_model_get.dart';

import '../responsesmodel/favorite_responses_model_post.dart';

class FavouriteDatasource {
  final HttpManager httpManager = HttpManager();

  // Fungsi untuk mencetak log
  void printLog(String message) {
    print("[LOG] $message");
  }

  Future<List<FavoritesResponsesModelGet>> getFavorites() async {
    try {
      final response = await httpManager.restRequest(
          url: ApiConstants.favoriteGetEndpoint,
          method: HttpMethods.get,
          useAuth: true);

      printLog("getFavorite Datasource response: ${response}");

      if (response['statusCode'] == 200 && response.containsKey('data')) {
        final List<dynamic> data = response['data'];

        return data
            .map((item) => FavoritesResponsesModelGet.fromJson(item))
            .toList();
      } else {
        throw Exception('Failed to load get Favorite format data');
      }
    } catch (e) {
      throw Exception('Failed to load get Favorite');
    }
  }

  Future<FavoriteResponsesModelPost?> createFavorites(
    FavoriteRequestsModel data) async {
  try {
    final response = await httpManager.restRequest(
        url: ApiConstants.favByIdGetEndpoint(favoriteId),
        method: HttpMethods.post,
        useAuth: true,
      );

      if (response['statusCode'] == 200) {
        return FavoriteResponsesModelPost.fromJson(response['data']);
      } else {
        return null;
      }
  } catch (e) {
    return  null;
  }
    }
    
  Future<FavoritesResponsesModelDelete?> deleteFavorites(int favoriteId) async {
    try {
      final response = await httpManager.restRequest(
        url: ApiConstants.favByIdGetEndpoint(favoriteId),
        method: HttpMethods.delete,
        useAuth: true,
      );

      final message = response['message'];
      final statusMessage = response['statusMessage'];

      if (message == 'SUCCESS' || statusMessage == 'OK') {
        if (response['data'] != null &&
            response['data'] is Map<String, dynamic>) {
          return FavoritesResponsesModelDelete.fromJson(response['data']);
        } else {
          return FavoritesResponsesModelDelete(
            message: message ?? "SUCCESS",
          );
        }
      } else {
        printLog(
            "delete Favorite Datasource response: ${statusMessage ?? "Unknown Error"}");
      }
      return null;
    } catch (e) {
      printLog("delete Favorite Datasource response: $e");
      return null;
    }
  }

  Future<FavoritesResponsesModelSearch?> searchFavorites(int favoriteId) async {
    try {
      final response = await httpManager.restRequest(
        url: ApiConstants.favByIdGetEndpoint(favoriteId),
        method: HttpMethods.get,
        useAuth: true,
      );

      if (response['statusCode'] == 200) {
        return FavoritesResponsesModelSearch.fromJson(response['data']);
      } else {
        printLog(
            "searchFavorite Datasource response: ${response['statusMessage']}");
        return null;
      }
    } catch (e) {
      printLog("search Favorite Datasource response: $e");
      return null;
    }
  }
}