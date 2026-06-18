
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_posts_%20repository.dart';
import 'package:toktik/domain/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostsRepository {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    throw UnimplementedError();
  }
  
}