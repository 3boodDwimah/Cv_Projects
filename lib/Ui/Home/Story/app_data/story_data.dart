import '../models/story_model.dart';
import '../models/user_model.dart';

const User user = User(
  name: 'presence.fit',
  imagepro:
      'https://images.unsplash.com/photo-1604092039551-ddf6d449e29d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',
);

const List<Story> stories = [
  Story(
    url:
        'https://images.unsplash.com/photo-1604092039551-ddf6d449e29d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',
    media: MediaType.image,
    user: user,
    duration: Duration(seconds: 5),
  ),
  Story(
    url: 'assets/video/v1.mp4',
    media: MediaType.video,
    duration: Duration(seconds: 0),
    user: user,
  ),
  Story(
    url: 'assets/video/v2.mp4',
    media: MediaType.video,
    duration: Duration(seconds: 0),
    user: user,
  ),
  Story(
    url:
"https://images.unsplash.com/photo-1604092039551-ddf6d449e29d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80",    media: MediaType.image,
    duration: Duration(seconds: 5),
    user: user,
  ),
  Story(
    url: 'assets/video/v3.mp4',
    media: MediaType.video,
    duration: Duration(seconds: 0),
    user: user,
  ),
];
List<UserStoryList> storyListUser = [
  UserStoryList(
      user: const User(
        name: 'User Name',
        imagepro:
            'https://images.unsplash.com/photo-1604092039551-ddf6d449e29d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',
      ),
      story: stories),
  UserStoryList(
      user: const User(
        name: 'The Flutter Pro fit 1',
        imagepro:
            'https://images.unsplash.com/photo-1604092039551-ddf6d449e29d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',
      ),
      story: stories),
  UserStoryList(
      user: const User(
        name: 'The Flutter Pro fit 2',
        imagepro:
            'https://images.unsplash.com/photo-1604092039551-ddf6d449e29d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',
      ),
      story: stories),
  UserStoryList(
      user: const User(
        name: 'The Flutter Pro fit 3',
        imagepro:
            'https://images.unsplash.com/photo-1604092039551-ddf6d449e29d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',
      ),
      story: stories),
  UserStoryList(
      user: const User(
        name: 'The Flutter Pro fit 4',
        imagepro:
            'https://images.unsplash.com/photo-1604092039551-ddf6d449e29d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',
      ),
      story: stories),
  UserStoryList(
      user: const User(
        name: 'The Flutter Pro fit 5',
        imagepro:
            'https://images.unsplash.com/photo-1604092039551-ddf6d449e29d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',
      ),
      story: stories),
  UserStoryList(
      user: const User(
        name: 'The Flutter Pro fit 6',
        imagepro:
            'https://images.unsplash.com/photo-1604092039551-ddf6d449e29d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',
      ),
      story: stories),
];

class UserStoryList {
  List<Story> story;
  User user;

  UserStoryList({required this.story, required this.user});
}
