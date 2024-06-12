class JsonData {
  int? total, skip, limit;
  List<PostsModal>? posts;

  JsonData({this.total, this.skip, this.limit, this.posts});

  factory JsonData.fromJson(Map<String, dynamic> json) {
    List<dynamic>? jsonPosts = json['posts'];
    List<PostsModal>? posts = jsonPosts != null
        ? jsonPosts.map((postJson) => PostsModal.fromJson(postJson)).toList()
        : null;
    return JsonData(
        total: json['total'],
        skip: json['skip'],
        limit: json['limit'],
        posts: posts);
  }
}

class PostsModal {
  int? id, views, userId;
  String? title, body;
  List? tags;
  Reactions? reactions;

  PostsModal({
    this.id,
    this.views,
    this.userId,
    this.title,
    this.body,
    this.tags,
    this.reactions,
  });

  factory PostsModal.fromJson(Map json) {
    return PostsModal(
        id: json['id'],
        views: json['views'],
        userId: json['userId'],
        title: json['title'],
        body: json['body'],
        tags: json['tags'],
        reactions: Reactions.fromJson(json['reactions']));
  }
}

class Reactions {
  int? likes, dislikes;

  Reactions({this.likes, this.dislikes});

  factory Reactions.fromJson(Map json) {
    return Reactions(likes: json['likes'], dislikes: json['dislikes']);
  }
}