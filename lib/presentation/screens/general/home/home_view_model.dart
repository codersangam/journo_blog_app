part of 'home_imports.dart';

class HomeViewModel {
  final Repository repository;
  HomeViewModel({required this.repository});

  final VelocityBloc<HomeModel> postsBloc =
      VelocityBloc<HomeModel>(HomeModel());

  fetchAllPosts() async {
    var postsData = await repository.postsRepo.getAllPosts();
    if (postsData.status == 1) {
      postsBloc.onUpdateData(postsData);
    }
  }
}
