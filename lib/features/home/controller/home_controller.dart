

import 'package:get/get.dart';
import 'package:tubes2_uas_kelompok1/data/breeds/responsesmodel/breeds_responses_model.dart';
import 'package:tubes2_uas_kelompok1/data/favorite/datasource/favorite_datasource.dart';
import 'package:tubes2_uas_kelompok1/data/favorite/responsesmodel/favorite_responses_model_post.dart';
import 'package:tubes2_uas_kelompok1/data/vote/datasource/vote_datasource.dart';
import 'package:tubes2_uas_kelompok1/data/vote/requestsmodel/vote_requests_model.dart';

class HomeController extends GetxController{
  final BreedsDatasource _datasource = BreedsDatasource();
  final VoteDatasource _voteDatasource = VoteDatasource();
  final FavouriteDatasource _favouriteDatasource = FavouriteDatasource();
  var images = <BreedsResponsesModel>[].obs;

  @override
  void onInit(){
    super.onInit();
    fetchImages();
  }

  Future<void> fetchImages() async {
    try {
      final result = await _datasource.getCreeds();
      images.value = result;
    } catch (e) {
      PrintLog.printLog("catch error $e");
    }
  }

  void onFavoritePressed(String imageId) {
    final favorite = FavoriteRequestsModelPost(
      imageId: imageId, 
      subId: "1234",
    );
    _favouriteDatasource.createFavorite(favorite);
  }

  void onLikePressed(String imageId) {
     final vote = VoteRequestsModel(
      imageId: imageId, 
      subId: "1234",
      value: 1,
    );
    _voteDatasource.createVote(vote);
  }
}