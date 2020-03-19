class SubDomainsList {
  final List<SubDomain> subdomains;

  SubDomainsList({this.subdomains});

  factory SubDomainsList.fromJson(List<dynamic> parsedJson) {
    List<SubDomain> subdomains = new List<SubDomain>();
    subdomains = parsedJson.map((i) => SubDomain.fromJson(i)).toList();

    return new SubDomainsList(subdomains: subdomains);
  }
}

class SubDomain {
  String title;
  String image;

  SubDomain({this.title, this.image});

  SubDomain.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    image = json['image'];
  }
}
