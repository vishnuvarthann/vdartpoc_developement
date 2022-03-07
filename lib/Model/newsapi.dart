class NewsApi {
  NewsApi({
    required this.status,
    required this.totalResults,
    required this.articles,
  });
  final String? status;
  final int? totalResults;
  final List<Articles>? articles;

  factory NewsApi.fromJson(Map<String, dynamic> json) {
    return NewsApi(
        articles: List<Articles>.from(
            json["person"].map((x) => Articles.fromJson(x))),
        status: json['status'],
        totalResults: json['totalResults']);
    // status = json['status'];
    // totalResults = json['totalResults'];
    // articles =
    //     List.from(json['articles']).map((e) => Articles.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data['status'] = status;
    _data['totalResults'] = totalResults;
    _data['articles'] = List<dynamic>.from(articles!.map((x) => x.toJson()));
    return _data;
  }
}

class Articles {
  Articles({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });
  final Source source;
  late final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  factory Articles.fromJson(Map<String, dynamic> json) {
    return Articles(
      source: json['source'],
      title: json['title'],
      url: json['url'],
      publishedAt: json['publishedAt'],
      author: json['author'],
      content: json['content'],
      description: json['description'],
      urlToImage: json['urlToImage'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data['source'] = source.toJson();
    _data['author'] = author;
    _data['title'] = title;
    _data['description'] = description;
    _data['url'] = url;
    _data['urlToImage'] = urlToImage;
    _data['publishedAt'] = publishedAt;
    _data['content'] = content;
    return _data;
  }
}

class Source {
  Source({
    this.id,
    required this.name,
  });
  late final String? id;
  late final String name;

  Source.fromJson(Map<String, dynamic> json) {
    id = null;
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    return _data;
  }
}
