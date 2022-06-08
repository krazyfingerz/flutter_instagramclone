class Post {
  const Post(
    {required this.description, required this.uid, required this.username, required this.likes, required this.postId, required this.datePublished, required this.postUrl, required this.profImage,}
  );

  final String description;
  final String uid;
  final String username;
  final int likes;
  final String postId;
  final DateTime datePublished;
  final String postUrl;
  final String profImage;

  Map<String, dynamic> toJson() => {
    "description": description,
    "uid": uid,
    "likes": likes,
    "username": username,
    "postId": postId,
    "datePublished": datePublished,
    'postUrl': postUrl,
    'profImage': profImage
  };

  static Post fromSnap(snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Post(
      description: snapshot["description"],
      uid: snapshot["uid"],
      likes: snapshot["likes"],
      postId: snapshot["postId"],
      datePublished: snapshot["datePublished"],
      username: snapshot["username"],
      postUrl: snapshot['postUrl'],
      profImage: snapshot['profImage']
    );
  }
}
