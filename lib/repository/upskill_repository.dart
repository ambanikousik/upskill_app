import 'package:upskillapp/models/models.dart';
import 'upskill_api_client.dart';

import 'package:meta/meta.dart';
import 'dart:async';

class UpskillRepository {
  final UpskillApiClient upskillApiClient;

  UpskillRepository({@required this.upskillApiClient})
      : assert(upskillApiClient != null);

  Future<DomainsList> getDomains() async {
    final DomainsList domainsList = await upskillApiClient.getDomains();
    return domainsList;
  }

  Future<SubDomainsList> getSubDomains() async {
    final SubDomainsList subdomainsList =
        await upskillApiClient.getSubDomains();
    return subdomainsList;
  }

  Future<TopicsList> getTopics() async {
    final TopicsList topicsList = await upskillApiClient.getTopics();
    return topicsList;
  }

  Future<Test> getTest() async {
    final Test test = await upskillApiClient.getTest();
    return test;
  }

  Future<AnalysisModel> getStats() async {
    final AnalysisModel analysisModel = await upskillApiClient.getStats();
    return analysisModel;
  }

}
