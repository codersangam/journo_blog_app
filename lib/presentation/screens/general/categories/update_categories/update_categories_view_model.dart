part of 'update_categories_imports.dart';

class UpdateCategoriesViewModel {
  final Repository repository;
  UpdateCategoriesViewModel({required this.repository});

  final TextEditingController textEditingController = TextEditingController();

  final VelocityBloc<bool> isLoadingBloc = VelocityBloc<bool>(false);

  updateCategories(context, String id) async {
    isLoadingBloc.onUpdateData(true);
    var data = await repository.categoriesRepo.updateCategories(
        id,
        textEditingController.text,
        textEditingController.text.toLowerCase().replaceAll(" ", "-"));
    if (data.status == 1) {
      VxToast.show(context, msg: data.message!);
      var newData = await repository.categoriesRepo.getAllCategories();
      isLoadingBloc.onUpdateData(false);
      AutoRouter.of(context).maybePop<CategoriesModel>(newData);
    }
  }
}
