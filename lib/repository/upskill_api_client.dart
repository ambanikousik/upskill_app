import 'package:upskillapp/models/models.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'dart:convert';


class UpskillApiClient {
  static const baseUrl = 'https://mock-api-upskill.herokuapp.com';
  final http.Client httpClient;

  UpskillApiClient({
    @required this.httpClient,
  }) : assert(httpClient != null);

  Future<DomainsList> getDomains() async {
    final domainUrl = '$baseUrl/domains';
    final domainResponse = await this.httpClient.get(domainUrl);
    if (domainResponse.statusCode != 200) {
      throw Exception('error getting domains');
    }
    final domainJson = json.decode(domainResponse.body);
    DomainsList domainsList = DomainsList.fromJson(domainJson);
    return domainsList;
  }

  Future<SubDomainsList> getSubDomains() async {
    final subdomainUrl = '$baseUrl/subdomains';
    final subdomainResponse = await this.httpClient.get(subdomainUrl);
    if (subdomainResponse.statusCode != 200) {
      throw Exception('error getting domains');
    }
    final domainJson = json.decode(subdomainResponse.body);
    SubDomainsList domainsList = SubDomainsList.fromJson(domainJson);
    return domainsList;
  }

  Future<TopicsList> getTopics() async {
    final topicsUrl = '$baseUrl/topics';
    final topicsResponse = await this.httpClient.get(topicsUrl);
    if (topicsResponse.statusCode != 200) {
      throw Exception('error getting domains');
    }
    final topicJson = json.decode(topicsResponse.body);
    TopicsList topicsList = TopicsList.fromJson(topicJson);
    return topicsList;
  }

  Future<Test> getTest() async {
    final testUrl = '$baseUrl/tests';
    final testResponse = await this.httpClient.get(testUrl);
    if (testResponse.statusCode != 200) {
      throw Exception('error getting domains');
    }
    final testJson = json.decode(testResponse.body);
    Test test = Test.fromJson(testJson);
    return test;
  }

  Future<AnalysisModel> getStats() async {
    final statsUrl = '$baseUrl/result';
    final statsResponse = await this.httpClient.get(statsUrl);
    if (statsResponse.statusCode != 200) {
      throw Exception('error getting domains');
    }
    final statsJson = json.decode(statsResponse.body);
    AnalysisModel analysisModel = AnalysisModel.fromJson(statsJson);
    return analysisModel;
  }

}
