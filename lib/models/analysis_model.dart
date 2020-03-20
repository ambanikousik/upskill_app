class AnalysisModel {
  Analysis analysis;
  int avg;
  Chart chart;
  List<int> rank;
  Report report;

  AnalysisModel({this.analysis, this.avg, this.chart, this.rank, this.report});

  AnalysisModel.fromJson(Map<String, dynamic> json) {
    analysis = json['analysis'] != null
        ? new Analysis.fromJson(json['analysis'])
        : null;
    avg = json['avg'];
    chart = json['chart'] != null ? new Chart.fromJson(json['chart']) : null;
    rank = json['rank'].cast<int>();
    report =
        json['report'] != null ? new Report.fromJson(json['report']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.analysis != null) {
      data['analysis'] = this.analysis.toJson();
    }
    data['avg'] = this.avg;
    if (this.chart != null) {
      data['chart'] = this.chart.toJson();
    }
    data['rank'] = this.rank;
    if (this.report != null) {
      data['report'] = this.report.toJson();
    }
    return data;
  }
}

class Analysis {
  int avgScore;
  double score;

  Analysis({this.avgScore, this.score});

  Analysis.fromJson(Map<String, dynamic> json) {
    avgScore = json['avg_score'];
    score = json['score'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['avg_score'] = this.avgScore;
    data['score'] = this.score;
    return data;
  }
}

class Chart {
  int angular;
  int node;
  int vue;

  Chart({this.angular, this.node, this.vue});

  Chart.fromJson(Map<String, dynamic> json) {
    angular = json['angular'];
    node = json['node'];
    vue = json['vue'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['angular'] = this.angular;
    data['node'] = this.node;
    data['vue'] = this.vue;
    return data;
  }
}

class Report {
  List<int> angular;
  List<int> node;
  List<int> vue;

  Report({this.angular, this.node, this.vue});

  Report.fromJson(Map<String, dynamic> json) {
    angular = json['angular'].cast<int>();
    node = json['node'].cast<int>();
    vue = json['vue'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['angular'] = this.angular;
    data['node'] = this.node;
    data['vue'] = this.vue;
    return data;
  }
}
