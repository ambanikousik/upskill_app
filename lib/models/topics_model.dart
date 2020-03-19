class TopicsList {
  final List<Topic> topics;

  TopicsList({this.topics});

  factory TopicsList.fromJson(List<dynamic> parsedJson) {
    List<Topic> topics = new List<Topic>();
    topics = parsedJson.map((i) => Topic.fromJson(i)).toList();

    return new TopicsList(topics: topics);
  }
}

class Topic {
  String title;
  String image;
  int questions;
  int time;

  Topic({this.title, this.image, this.questions, this.time});

  Topic.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    image = json['image'];
    questions = json['questions'] as int;
    time = json['time'] as int;
  }
}
