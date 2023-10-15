part of 'categories_imports.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  late CategoriesViewModel categoriesViewModel;
  @override
  void initState() {
    categoriesViewModel =
        CategoriesViewModel(repository: context.read<Repository>());
    categoriesViewModel.fetchAllCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: "Categories".text.size(16).make(),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => categoriesViewModel.gotoAddCategories(context),
            icon: const Icon(FeatherIcons.plus),
          ),
        ],
      ),
      body: BlocBuilder<VelocityBloc<CategoriesModel>,
          VelocityState<CategoriesModel>>(
        bloc: categoriesViewModel.categoriesModelBloc,
        builder: (context, state) {
          if (state is VelocityInitialState) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if (state is VelocityUpdateState) {
            return ListView.separated(
              itemCount: state.data.categories!.length,
              separatorBuilder: (context, index) => const SizedBox(height: 20),
              itemBuilder: (context, index) {
                var categoriesData = state.data.categories![index];
                return Card(
                  child: ListTile(
                    leading: "${index + 1}".text.size(16).make(),
                    title: categoriesData.title!.text.size(16).make(),
                    trailing: SizedBox(
                      width: 100,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () => categoriesViewModel
                                .gotoUpdateCategories(context, categoriesData),
                            icon: const Icon(
                              FeatherIcons.edit2,
                              color: Colors.green,
                            ),
                          ),
                          IconButton(
                            onPressed: () =>
                                categoriesViewModel.deleteCategories(context,
                                    categoriesData.id.toString(), index),
                            icon: const Icon(
                              FeatherIcons.trash,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
