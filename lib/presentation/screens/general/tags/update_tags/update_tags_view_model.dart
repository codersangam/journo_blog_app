part of 'update_tags_imports.dart';

class UpdateTagsViewModel {
  final Repository repository;
  UpdateTagsViewModel({required this.repository});

  final TextEditingController textEditingController = TextEditingController();

  final VelocityBloc<bool> isLoadingBloc = VelocityBloc<bool>(false);

  updateTags(context, String id) async {
    isLoadingBloc.onUpdateData(true);
    var data = await repository.tagsRepo.updateTags(
        id,
        textEditingController.text,
        textEditingController.text.toLowerCase().replaceAll(" ", "-"));
    if (data.status == 1) {
      VxToast.show(context, msg: data.message!);
      var newData = await repository.tagsRepo.getAllTags();
      isLoadingBloc.onUpdateData(false);
      AutoRouter.of(context).maybePop<TagsModel>(newData);
    }
  }
}
