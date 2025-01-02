import 'package:flutter_test/flutter_test.dart';
import 'package:tubes2_uas_kelompok1/data/breeds/datasource/breeds_datasource.dart';

void main() {
  group('Breeds Datasource test', () {
    late BreedsDatasource breedsDatasource;

    setUp(() {
      breedsDatasource = BreedsDatasource();
    });

    test('getBreeds returns correct data when successful', () async {
      final response = await breedsDatasource.getBreeds();

      expect(response.length, greaterThan(0));

      expect(response[0].id, isNotNull);
    });
  });
}
