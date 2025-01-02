import 'package:get/get.dart';
import 'package:tubes2_uas_kelompok1/data/breeds/responsesmodel/breeds_responses_model.dart';
import 'package:tubes2_uas_kelompok1/data/favorite/datasource/favorite_datasource.dart';
import 'package:tubes2_uas_kelompok1/data/favorite/requestsmodel/favorite_requests_model.dart';
import 'package:tubes2_uas_kelompok1/data/vote/datasource/vote_datasource.dart';

class HomeController extends GetxController {
  final BreedsDatasource _datasource = BreedsDatasource();
  final VoteDatasource _voteDatasource = VoteDatasource();
  final FavouriteDatasource _favouriteDatasource = FavouriteDatasource();
  var image = <BreedsResponsesModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchImages();
  }

  Future<void> fetchImages() async {
    try {
      final response = await _datasource.getBreeds();
      images.values = response;
    } catch (e) {
      PrintLog.pritLog("catch error $e");
    }
  }

  void onFavoritePressed(String imageId) {
    final favorite = FavoriteRequestsModelPost(
      imageId: imageId,
      subId: "1234",
    );
    _favouriteDatasource.createFavorite(favorite);
  }

  void onLikedPressed(String imageId) {
    final vote = voteRequestsModel(
      imageId: imageId,
      subId: "1234",
      value: (1,
    );
    _voteDatasource.createVote(vote);
  }
}
