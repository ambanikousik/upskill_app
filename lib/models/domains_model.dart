class DomainsList {
  final List<Domain> domains;

  DomainsList({this.domains});

  factory DomainsList.fromJson(List<dynamic> parsedJson) {
    List<Domain> domains = new List<Domain>();
    domains = parsedJson.map((i) => Domain.fromJson(i)).toList();

    return new DomainsList(domains: domains);
  }
}

class Domain {
  String title;
  String image;

  Domain({this.title, this.image});

  Domain.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    image = json['image'];
  }
}
