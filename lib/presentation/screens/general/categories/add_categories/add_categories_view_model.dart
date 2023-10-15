part of 'add_categories_imports.dart';

class AddCategoriesViewModel {
  final Repository repository;
  AddCategoriesViewModel({required this.repository});

  final TextEditingController textEditingController = TextEditingController();

  final VelocityBloc<bool> isLoadingBloc = VelocityBloc<bool>(false);

  addnewCategories(context) async {
    isLoadingBloc.onUpdateData(true);
    var data = await repository.categoriesRepo.addNewCategories(
        textEditingController.text,
        textEditingController.text.toLowerCase().replaceAll(" ", "-"));
    if (data.status == 1) {
      VxToast.show(context, msg: data.message!);
      var newData = await repository.categoriesRepo.getAllCategories();
      isLoadingBloc.onUpdateData(false);
      AutoRouter.of(context).pop<CategoriesModel>(newData);
    }
  }
}
