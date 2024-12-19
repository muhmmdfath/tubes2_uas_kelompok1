import '../../../core/api_services/dio_module.dart';
import '../../../core/api_services/endpoint.dart';
// ignore: unused_import
import '../../../core/utils/print_log.dart';
import '../responsesmodel/breeds_responses_model.dart';

class BreedsDatasource {
  final HttpManager _httpManager = HttpManager();

  Future<List<BreedsResponsesModel>> getBreeds() async {
    try {
      final response = await _httpManager.restRequest(
        url: ApiConstants.breedGetEndpoint,
        method: HttpMethods.get,
        useAuth: true,
      );

      // PrintLog.printLog('getImages DataSource response: $response');

      // Check if the response contains the expected structure
      if (response['statusCode'] == 200) {
        final List<dynamic> data = response['data'];

        // Ensure that data is a list and not null
        // ignore: unnecessary_type_check
        if (data is List) {
          return data
              .map((imageData) => BreedsResponsesModel.fromJson(imageData))
              .toList();
        } else {
          throw Exception('Data format error: Expected a list.');
        }
      } else {
        throw Exception('Failed to load breeds: ${response['statusMessage']}');
      }
    } catch (e) {
      // PrintLog.printLog('getImages DataSource error: $e');
      throw Exception(
        'Failed to load breeds: $e',
      );
    }
  }
}
