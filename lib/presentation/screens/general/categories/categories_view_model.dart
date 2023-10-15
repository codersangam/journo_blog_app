part of 'categories_imports.dart';

class CategoriesViewModel {
  final Repository repository;
  CategoriesViewModel({required this.repository});

  final VelocityBloc<CategoriesModel> categoriesModelBloc =
      VelocityBloc<CategoriesModel>(CategoriesModel());

  fetchAllCategories() async {
    var categoriesData = await repository.categoriesRepo.getAllCategories();
    if (categoriesData.status == 1) {
      categoriesModelBloc.onUpdateData(categoriesData);
    }
  }

  gotoAddCategories(context) async {
    var addedData = await AutoRouter.of(context)
        .push<CategoriesModel>(const AddCategoriesRoute());
    if (addedData != null) {
      categoriesModelBloc.onUpdateData(addedData);
    }
  }

  gotoUpdateCategories(context, Category category) async {
    var updatedData = await AutoRouter.of(context)
        .push<CategoriesModel>(UpdateCategoriesRoute(category: category));
    if (updatedData != null) {
      categoriesModelBloc.onUpdateData(updatedData);
    }
  }

  deleteCategories(context, String id, int index) async {
    var data = await repository.categoriesRepo.deleteCategories(id);
    if (data.status == 1) {
      VxToast.show(context, msg: data.message!);
      categoriesModelBloc.state.data.categories!.removeAt(index);
      categoriesModelBloc.onUpdateData(categoriesModelBloc.state.data);
    }
  }
}
