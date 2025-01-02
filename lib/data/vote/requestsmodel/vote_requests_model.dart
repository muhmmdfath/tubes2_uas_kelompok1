// {
// 	"image_id":"asf2",
// 	"sub_id": "my-user-1234",
//     "value":1
// }

class VoteRequestsModel {
  final String imageId;
  final String subId;
  final int value;

  VoteRequestsModel({required this.imageId, required this.subId, required this.value});

  Map<String, dynamic> toJson() {
    return {
      'image_id': imageId,
      'sub_id': subId,
      'value': value
    };
  }
}