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
}
