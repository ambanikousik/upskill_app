class ContributorModel {
  String image;
  String name;
  Result result;
  Reward reward;
  List<Stats> stats;

  ContributorModel(
      {this.image, this.name, this.result, this.reward, this.stats});

  ContributorModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    result =
        json['result'] != null ? new Result.fromJson(json['result']) : null;
    reward =
        json['reward'] != null ? new Reward.fromJson(json['reward']) : null;
    if (json['stats'] != null) {
      stats = new List<Stats>();
      json['stats'].forEach((v) {
        stats.add(new Stats.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['name'] = this.name;
    if (this.result != null) {
      data['result'] = this.result.toJson();
    }
    if (this.reward != null) {
      data['reward'] = this.reward.toJson();
    }
    if (this.stats != null) {
      data['stats'] = this.stats.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Result {
  List<int> angular;
  List<int> nodeJS;
  List<int> nodejs;

  Result({this.angular, this.nodeJS, this.nodejs});

  Result.fromJson(Map<String, dynamic> json) {
    angular = json['Angular'].cast<int>();
    nodeJS = json['NodeJS'].cast<int>();
    nodejs = json['nodejs'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Angular'] = this.angular;
    data['NodeJS'] = this.nodeJS;
    data['nodejs'] = this.nodejs;
    return data;
  }
}

class Reward {
  int i100pt;
  int i20pt;

  Reward({this.i100pt, this.i20pt});

  Reward.fromJson(Map<String, dynamic> json) {
    i100pt = json['100pt'];
    i20pt = json['20pt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['100pt'] = this.i100pt;
    data['20pt'] = this.i20pt;
    return data;
  }
}

class Stats {
  String title;
  String created;
  String coding;
  int view;
  int completed;

  Stats({this.title, this.created, this.coding, this.view, this.completed});

  Stats.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    created = json['created'];
    coding = json['coding'];
    view = json['view'];
    completed = json['completed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['created'] = this.created;
    data['coding'] = this.coding;
    data['view'] = this.view;
    data['completed'] = this.completed;
    return data;
  }
}
