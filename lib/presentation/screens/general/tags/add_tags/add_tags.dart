part of 'add_tags_imports.dart';

@RoutePage<TagsModel>()
class AddTags extends StatefulWidget {
  const AddTags({super.key});

  @override
  State<AddTags> createState() => _AddTagsState();
}

class _AddTagsState extends State<AddTags> {
  late AddTagsViewModel addTagsViewModel;

  @override
  void initState() {
    addTagsViewModel = AddTagsViewModel(repository: context.read<Repository>());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: "Add Tags".text.size(16).make(),
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
                controller: addTagsViewModel.textEditingController,
              ),
              30.verticalSpace,
              VxTextField(
                fillColor: Colors.transparent,
                borderColor: MyColors.primaryColor,
                borderType: VxTextFieldBorderType.roundLine,
                borderRadius: 10,
                hint: "Slug",
                controller: addTagsViewModel.textEditingController,
              ),
              const Spacer(),
              BlocBuilder<VelocityBloc<bool>, VelocityState<bool>>(
                bloc: addTagsViewModel.isLoadingBloc,
                builder: (context, state) {
                  return PrimaryButton(
                    title: "Add New Tag",
                    isLoading: state.data,
                    onPressed: () => addTagsViewModel.addnewTags(context),
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
