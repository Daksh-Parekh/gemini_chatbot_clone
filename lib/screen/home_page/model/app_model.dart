class MainContentModel {
  List<PartsModel>? partList = [];

  MainContentModel({this.partList});

  factory MainContentModel.mapToModel(Map m3) {
    List contentList = m3['parts'];
    return MainContentModel(
      partList: contentList
          .map(
            (e) => PartsModel.mapToModel(e),
          )
          .toList(),
    );
  }
}

class PartsModel {
  String? text;

  PartsModel({this.text});

  factory PartsModel.mapToModel(Map m1) {
    return PartsModel(text: m1['text']);
  }
}
