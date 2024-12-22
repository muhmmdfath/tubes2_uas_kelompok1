import 'package:flutter_test/flutter_test.dart';
import 'package:tubes2_uas_kelompok1/data/favorite/datasource/favorite_datasource.dart';
import 'package:tubes2_uas_kelompok1/data/favorite/requestsmodel/favorite_requests_model.dart';

void main() {
  group('Favorite Datasource test', () {
    late FavouriteDatasource favoriteDatasource;

    setUp(() {
      favoriteDatasource = FavouriteDatasource();
    });
    
    test('get Favorite return correct data when successful', () async {
      final response = await favoriteDatasource.getFavorites();

      expect(response.length, greaterThan(0));

      expect(response[0].id, isNotNull);
    });

    test('create Favorite return correct data when successful', () async {
      final favoriteReqModel =
          FavoriteRequestsModel(imageId: 'asho', subId: 'test_i1');

      final response =
          await favoriteDatasource.createFavorites(favoriteReqModel);

      if (response != null) {
        expect(response.message, equals("SUCCES"));
      } else {
        fail('response is null');
      }
    });

    test('search Favorite return correct data when successful', () async {
      final favoriteId = 232501209;

      final response = await favoriteDatasource.searchFavorites(favoriteId);

      if (response != null) {
        expect(response.id, equals(favoriteId));
      } else {
        fail('response is null');
      }
    });

    test('Delete Favorite return correct data when successful', () async {
      final favoriteId = 232501209;

      final response = await favoriteDatasource.deleteFavorites(favoriteId);

      expect(response?.message, equals("SUCCES"));
    });
  });
}
