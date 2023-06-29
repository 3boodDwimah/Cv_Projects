import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cv/bloc/cubit_post/states.dart';
import 'package:cv/main.dart';
import 'package:cv/modle/comment_model.dart';
import 'package:cv/modle/post_model.dart';
import 'package:cv/modle/saved_model.dart';
import 'package:cv/modle/user.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';


class CvPostCubit extends Cubit<CvPostStates> {
  CvPostCubit() : super(CvPostInitialState());

  static CvPostCubit get(context) => BlocProvider.of(context);

  File? postImage;

  // File? postVideo;
  UserDataModel? users;

  File? profileImage;
  var picker = ImagePicker();

  Future<void> getPostImage() async {
    final pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      postImage = File(pickedFile.path);
      emit(CvPostImagePickedSuccessState());
    } else {
      print('No image selected.');
      emit(CvPostImagePickedErrorState());
    }
  }

  void removePostImage() {
    postImage = null;
    emit(CvRemovePostImageState());
  }

  // Future<void> getPostVideo() async {
  //   final pickedFile = await picker.pickVideo(
  //     source: ImageSource.gallery,
  //   );
  //
  //   if (pickedFile != null) {
  //     postVideo = File(pickedFile.path);
  //     emit(CvPostVideoPickedSuccessState());
  //   } else {
  //     print('No image selected.');
  //     emit(CvPostVideoPickedErrorState());
  //   }
  // }

  // void removePostVideo() {
  //   postVideo = null;
  //   emit(CvRemovePostVideoState());
  // }

  void uploadPostImage({
    required String time,
    required String text,
    required String pid,
  }) {
    emit(CvCreatePostLoadingState());

    firebase_storage.FirebaseStorage.instance
        .ref()
        .child('posts/${Uri.file(postImage!.path).pathSegments.last}')
        .putFile(postImage!)
        .then((value) {
      value.ref.getDownloadURL().then((value) {
        print(value);
        createPost(
          pid: pid,
          text: text,
          time: time,
          postImage: value,
        );
      }).catchError((error) {
        emit(CvCreatePostErrorState());
      });
    }).catchError((error) {
      emit(CvCreatePostErrorState());
    });
  }

  // void uploadPostVideo({
  //   required String time,
  //   required String text,
  // }) {
  //   emit(CvCreatePostLoadingState());
  //
  //   firebase_storage.FirebaseStorage.instance
  //       .ref()
  //       .child('posts/${Uri.file(postVideo!.path).pathSegments.last}')
  //       .putFile(postVideo!)
  //       .then((value) {
  //     value.ref.getDownloadURL().then((value) {
  //       print(value);
  //       createPost(
  //         text: text,
  //         time: time,
  //         // postVideo: value,
  //       );
  //     }).catchError((error) {
  //       emit(CvCreatePostErrorState());
  //     });
  //   }).catchError((error) {
  //     emit(CvCreatePostErrorState());
  //   });
  // }

  void createPost({
    required String time,
    required String text,
    required String pid,
    String? postImage,
  }) {
    emit(CvCreatePostLoadingState());

    PostModel model = PostModel(
      firstname: FirstName,
      lastName: LastName,
      image: ImagePer,
      postId: UId,
      pid: pid,
      time: time,
      text: text,
      postImage: postImage ?? '',
      likes: [],
      itemsave: [],
    );

    FirebaseFirestore.instance
        .collection('posts')
        .doc(pid)
        .set(model.toJson())
        .then((value) {
      emit(CvCreatePostSuccessState());
    }).catchError((error) {
      emit(CvCreatePostErrorState());
    });
  }

  List<Map<String, PostModel>> postsList = [];

  void getPosts() {
    FirebaseFirestore.instance.collection('posts').orderBy("likes", descending: true).snapshots().listen((value) {
      postsList = [];

      for (var element in value.docs) {
        postsList
            .add({element.reference.id: PostModel.fromJson(element.data())});
      }

      emit(GetPostsSuccess());
    });
  }

  void createComment(
      {required String time,
      required String text,
      required String ownerName,
      required String ownerImage,
      required Map<String, PostModel> post}) {
    emit(CvCreatePostLoadingState());

    CommentDataModel model = CommentDataModel(
      cid:post.values.single.pid ,
      ownerImage: ownerImage,
      ownerName: ownerName,
      time: time,
      text: text,
    );

    FirebaseFirestore.instance
        .collection('posts')
        .doc(post.values.single.pid)
        .collection('comments')
        .add(model.toJson())
        .then((value) {
      emit(CvCreatePostSuccessState());
    }).catchError((error) {
      emit(CvCreatePostErrorState());
    });
  }

  List<Map<String, CommentDataModel>> commentsList = [];

  /*void getComment(

       Map<String, PostModel> post
      ) {
    FirebaseFirestore.instance
        .collection('posts')
        .doc(post.values.single.pid)
        .collection('comments')
        .snapshots()
        .listen((value) {
      commentsList = [];

      for (var element in value.docs) {
        commentsList.add(
            {element.reference.id: CommentDataModel.fromJson(element.data())});
      }

      emit(GetCommentSuccess());
    });
  }*/

  // void commentPost(postId) {
  //   FirebaseFirestore.instance
  //       .collection('posts')
  //       .doc(postId)
  //       .collection('comments')
  //       .doc(UId)
  //       .set({
  //     'Name': "abod",
  //     'time': "20:20",
  //     'text': "الانضمام كان مميز ",
  //     'image': true,
  //   }).then((value) {
  //     emit(CvCreatePostCommentSuccessState());
  //   }).catchError((error) {
  //     emit(CvCreatePostCommentErrorState());
  //   });
  // }

  void updatePostLikes(Map<String, PostModel> post) {
    if (post.values.single.likes.any((element) => element == UId)) {
      debugPrint('exist and remove');

      post.values.single.likes.removeWhere((element) => element == UId);
    } else {
      debugPrint('not exist and add');

      post.values.single.likes.add(UId);
    }

    FirebaseFirestore.instance
        .collection('posts')
        .doc(post.keys.single)
        .update(post.values.single.toJson())
        .then((value) {
      emit(PostUpdatedSuccess());
    }).catchError((error) {
      debugPrint(error.toString());

      emit(PostUpdatedError(
        message: error.toString(),
      ));
    });
  }

  void updatePostShares(Map<String, PostModel> post) {
    post.values.single.shares++;

    FirebaseFirestore.instance
        .collection('posts')
        .doc(post.keys.single)
        .update(post.values.single.toJson())
        .then((value) {
      emit(PostUpdatedSuccess());
    }).catchError((error) {
      debugPrint(error.toString());

      emit(PostUpdatedError(
        message: error.toString(),
      ));
    });
  }

  // upData Profile

  void uploadPostProfileImage({
    required String firstname,
    required String lastName,
    required String time,
  }) {
    emit(PostUserUpdateLoadingState());

    firebase_storage.FirebaseStorage.instance
        .ref()
        .child('posts/${Uri.file(profileImage!.path).pathSegments.last}')
        .putFile(profileImage!)
        .then((value) {
      value.ref.getDownloadURL().then((value) {
        //emit(PostUploadProfileImageSuccessState());
        print(value);
        updatePost(
          lastName: lastName,
          firstname: firstname,
          image: value,
        );
      }).catchError((error) {
        emit(PostUploadProfileImageErrorState());
      });
    }).catchError((error) {
      emit(PostUploadProfileImageErrorState());
    });
  }

  void updatePost({
    required String firstname,
    required String lastName,
    String? image,
  }) {
    PostModel model = PostModel(
      firstname: firstname,
      lastName: lastName,
      image: image ?? ImagePer,
      likes: [],
    );

    FirebaseFirestore.instance
        .collection('posts')
        .doc(UId)
        .update(model.toJson())
        .then((value) {
      getPosts();
      //
    }).catchError((error) {
      emit(PostUserUpdateErrorState());
    });
  }

  void updateItemSave(index) {
    {
      FirebaseFirestore.instance
          .collection('posts')
          .doc(postsList[index].values.single.pid)
          .update({'itemsave': true})
          .then((value) {})
          .catchError((error) {
            emit(PostUpdateItemSaveSuccessState());
          });
    }
  }

  void updateRemoveItemSave(index) {
    {
      FirebaseFirestore.instance
          .collection('posts')
          .doc(postsList[index].values.single.pid)
          .update({'itemsave': false})
          .then((value) {})
          .catchError((error) {
            emit(PostUpdateRemoveItemSaveSuccessState());
          });
    }
  }

// List<PostModel> posts = [];
// List<String> postsId = [];
// List<int> likes = [];
// List<int> comments = [];
// void getPosts() {
//   FirebaseFirestore.instance.collection('posts').get().then((value) {
//     value.docs.forEach((element) {
//       element.reference.collection('likes').get().then((value) {
//         likes.add(value.docs.length);
//
//           comments.add(value.docs.length);
//         postsId.add(element.id);
//         posts.add(PostModel.fromJson(element.data()));
//       }).catchError((error) {});
//     });
//
//     emit(CvGetPostsSuccessState());
//   }).catchError((error) {
//     print(error.toString());
//     emit(CvGetPostsErrorState(error.toString()));
//   });
// }
// void likePost(String postId) {
//   FirebaseFirestore.instance
//       .collection('posts')
//       .doc(postId)
//       .collection('likes')
//       .doc(UId)
//       .set({
//
//     'like': true,
//   }).then((value) {
//     emit(CvPostLikePostSuccessState());
//   }).catchError((error) {
//     emit(CvPostLikePostErrorState(error.toString()));
//   });
// }

  List<Map<String, SaveDataModel>> postsSave = [];

  void getSave() {
    FirebaseFirestore.instance.collection('saves').snapshots().listen((value) {
      postsSave = [];

      for (var element in value.docs) {
        postsSave.add(
            {element.reference.id: SaveDataModel.fromJson(element.data())});
      }

      emit(GetSaveSuccess());
    });
  }

  void updatePostSave(Map<String, PostModel> post) {
    if (post.values.single.itemsave.any((element) => element == UId)) {
      debugPrint('exist and remove');

      post.values.single.itemsave.removeWhere((element) => element == UId);
    } else {
      debugPrint('not exist and add');

      post.values.single.itemsave.add(UId);
    }

    FirebaseFirestore.instance
        .collection('posts')
        .doc(post.keys.single)
        .update(post.values.single.toJson())
        .then((value) {
      emit(PostUpdatedSuccess());
    }).catchError((error) {
      debugPrint(error.toString());

      emit(PostUpdatedError(
        message: error.toString(),
      ));
    });
  }
}
