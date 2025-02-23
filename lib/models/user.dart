import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String email;
  final String uid;
  final String photoUrl;
  final String bio;
  final String username;
  final String followers;
  final String following;

  const User({
    required this.email,
    required this.uid,
    required this.photoUrl,
    required this.bio,
    required this.username,
    required this.followers,
    required this.following,
  });

  Map<String, dynamic> toJson() => {
        'username': username,
        'uid': uid,
        'email': email,
        'photoUrl': photoUrl,
        'bio': bio,
        'followers': [],
        'following': [],
      };

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return User(
      username: snapshot["username"],
      uid: snapshot["uid"],
      email: snapshot["email"],
      photoUrl: snapshot["photoUrl"],
      bio: snapshot["bio"],
      followers: snapshot["followers"],
      following: snapshot["following"],
    );
  }
}
