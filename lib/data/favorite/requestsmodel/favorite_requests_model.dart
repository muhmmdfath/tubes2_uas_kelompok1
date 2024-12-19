class FavoriteRequestsModel {
  String imageId;
  String subId;

  FavoriteRequestsModel({required this.imageId, required this.subId});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image_id'] = this.imageId;
    data['sub_id'] = this.subId;
    return data;
  }
}
