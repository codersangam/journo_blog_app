import 'package:journo_blog_app/data/repositories/auth_repo.dart';
import 'package:journo_blog_app/data/repositories/posts_repo.dart';

import 'tags_repo.dart';

class Repository {
  Repository(
      {required this.tagsRepo,
      required this.authRepo,
      required this.postsRepo});

  final TagsRepo tagsRepo;
  final AuthRepo authRepo;
  final PostsRepo postsRepo;
}
