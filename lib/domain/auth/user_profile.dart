class UserProfile {
  //final String uid;
  final String username;
  final String course;
  final String bio;
  final String module;

  UserProfile({
    //required this.uid,
    required this.username,
    required this.course,
    required this.bio,
    required this.module,
  });

  UserProfile.fromData(Map<String, dynamic> data)
      : //uid = data['uid'] as String,
        username = data['username'] as String,
        course = data['course'] as String,
        bio = data['bio'] as String,
        module = data['module'] as String;

  Map<String, dynamic> toJson() {
    return {
      //'uid': uid,
      'username': username,
      'course': course,
      'bio': bio,
      'module': module,
    };
  }
}
