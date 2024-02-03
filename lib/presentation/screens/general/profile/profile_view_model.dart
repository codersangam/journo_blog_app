part of 'profile_imports.dart';

class ProfileViewModel {
  final Repository repository;
  ProfileViewModel({required this.repository});

  final VelocityBloc<ProfileModel> profileModelBloc =
      VelocityBloc<ProfileModel>(ProfileModel());

  getUserProfileData(BuildContext context) async {
    var userProfileData = await repository.postsRepo.getUserPosts();
    if (userProfileData.status == 1) {
      if (context.mounted) {
        context
            .read<VelocityBloc<ProfileModel>>()
            .onUpdateData(userProfileData);
      }
      profileModelBloc.onUpdateData(userProfileData);
    }
  }

  logout(context) async {
    var data = await repository.authRepo.userLogout(context);
    if (data.message.isNotEmptyAndNotNull) {
      Utils.clearAllSavedData();
      VxToast.show(context, msg: data.message.toString());
      AutoRouter.of(context).replace(const OnBoardRoute());
    }
  }
}
