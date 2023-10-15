part of 'add_categories_imports.dart';

@RoutePage<CategoriesModel>()
class AddCategories extends StatefulWidget {
  const AddCategories({super.key});

  @override
  State<AddCategories> createState() => _AddCategoriesState();
}

class _AddCategoriesState extends State<AddCategories> {
  late AddCategoriesViewModel addCategoriesViewModel;

  @override
  void initState() {
    addCategoriesViewModel =
        AddCategoriesViewModel(repository: context.read<Repository>());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: "Add Categories".text.size(16).make(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              24.verticalSpace,
              VxTextField(
                fillColor: Colors.transparent,
                borderColor: MyColors.primaryColor,
                borderType: VxTextFieldBorderType.roundLine,
                borderRadius: 10,
                hint: "Title",
                controller: addCategoriesViewModel.textEditingController,
              ),
              30.verticalSpace,
              VxTextField(
                fillColor: Colors.transparent,
                borderColor: MyColors.primaryColor,
                borderType: VxTextFieldBorderType.roundLine,
                borderRadius: 10,
                hint: "Slug",
                controller: addCategoriesViewModel.textEditingController,
              ),
              const Spacer(),
              BlocBuilder<VelocityBloc<bool>, VelocityState<bool>>(
                bloc: addCategoriesViewModel.isLoadingBloc,
                builder: (context, state) {
                  return PrimaryButton(
                    title: "Add New Category",
                    isLoading: state.data,
                    onPressed: () =>
                        addCategoriesViewModel.addnewCategories(context),
                  );
                },
              ),
              16.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
