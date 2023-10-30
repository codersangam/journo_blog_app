part of 'update_tags_imports.dart';

@RoutePage<TagsModel>()
class UpdateTags extends StatefulWidget {
  const UpdateTags({super.key, required this.tag});

  final Tag tag;

  @override
  State<UpdateTags> createState() => _UpdateTagsState();
}

class _UpdateTagsState extends State<UpdateTags> {
  late UpdateTagsViewModel updateTagsViewModel;

  @override
  void initState() {
    updateTagsViewModel =
        UpdateTagsViewModel(repository: context.read<Repository>());
    updateTagsViewModel.textEditingController.text =
        widget.tag.title.toString();
    super.initState();
  }

  @override
  void dispose() {
    updateTagsViewModel.textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: "Update Tags".text.size(16).make(),
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
                controller: updateTagsViewModel.textEditingController,
              ),
              30.verticalSpace,
              VxTextField(
                fillColor: Colors.transparent,
                borderColor: MyColors.primaryColor,
                borderType: VxTextFieldBorderType.roundLine,
                borderRadius: 10,
                hint: "Slug",
                controller: updateTagsViewModel.textEditingController,
              ),
              const Spacer(),
              BlocBuilder<VelocityBloc<bool>, VelocityState<bool>>(
                bloc: updateTagsViewModel.isLoadingBloc,
                builder: (context, state) {
                  return PrimaryButton(
                    title: "Update Tag",
                    isLoading: state.data,
                    onPressed: () => updateTagsViewModel.updateTags(
                        context, widget.tag.id.toString()),
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
