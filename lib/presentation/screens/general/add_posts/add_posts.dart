part of 'add_posts_imports.dart';

class AddPosts extends StatefulWidget {
  const AddPosts({super.key});

  @override
  State<AddPosts> createState() => _AddPostsState();
}

class _AddPostsState extends State<AddPosts> {
  late AddPostsViewModel addPostsViewModel;

  @override
  void initState() {
    addPostsViewModel =
        AddPostsViewModel(repository: context.read<Repository>());
    super.initState();
  }

  @override
  void dispose() {
    addPostsViewModel.textEditingController.dispose();
    addPostsViewModel._controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: "Add Post".text.make(),
        automaticallyImplyLeading: false,
        actions: [
          BlocBuilder<VelocityBloc<bool>, VelocityState<bool>>(
            bloc: addPostsViewModel.isLoadingBloc,
            builder: (context, state) {
              return IconButton(
                onPressed: () => addPostsViewModel.addPost(context),
                icon: state.data == true
                    ? const CircularProgressIndicator.adaptive(
                        backgroundColor: Colors.white,
                      )
                    : const Icon(FeatherIcons.check),
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          20.h.heightBox,
          BlocBuilder<VelocityBloc<XFile?>, VelocityState<XFile?>>(
            bloc: addPostsViewModel.selectedImageBloc,
            builder: (context, state) {
              return Stack(
                alignment: Alignment.bottomRight,
                children: [
                  state.data != null
                      ? Image.file(
                          File(state.data!.path),
                          height: 250,
                          width: 1.sw,
                          fit: BoxFit.cover,
                        ).cornerRadius(20)
                      : Image.network(
                          "https://cpworldgroup.com/wp-content/uploads/2021/01/placeholder.png",
                        ).cornerRadius(20),
                  IconButton(
                    onPressed: () => addPostsViewModel.pickImage(context),
                    icon: const Icon(
                      FeatherIcons.camera,
                      color: MyColors.primaryColor,
                    ),
                  ),
                ],
              );
            },
          ),
          20.h.heightBox,
          VxTextField(
            fillColor: Colors.transparent,
            borderColor: MyColors.primaryColor,
            borderType: VxTextFieldBorderType.roundLine,
            borderRadius: 10,
            hint: "Title",
            controller: addPostsViewModel.textEditingController,
          ),
          20.h.heightBox,
          VxTextField(
            fillColor: Colors.transparent,
            borderColor: MyColors.primaryColor,
            borderType: VxTextFieldBorderType.roundLine,
            borderRadius: 10,
            hint: "Slug",
            controller: addPostsViewModel.textEditingController,
          ),
          20.h.heightBox,
          BlocBuilder<VelocityBloc<Tag?>, VelocityState<Tag?>>(
            bloc: addPostsViewModel.selectedTagBloc,
            builder: (context, state) {
              return InkWell(
                onTap: () async {
                  var data = await AutoRouter.of(context)
                      .push<Tag>(TagsRoute(navigateType: NavigateType.inner));
                  addPostsViewModel.selectedTagBloc.onUpdateData(data);
                },
                child: Container(
                  height: 60,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: MyColors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      state.data != null
                          ? state.data!.title!.text.make()
                          : "Tags".text.make(),
                      const Icon(FeatherIcons.chevronRight)
                    ],
                  ),
                ),
              );
            },
          ),
          20.h.heightBox,
          BlocBuilder<VelocityBloc<Category?>, VelocityState<Category?>>(
            bloc: addPostsViewModel.selectedCategoryBloc,
            builder: (context, state) {
              return InkWell(
                onTap: () async {
                  var data = await AutoRouter.of(context)
                      .push<Category>(CategoriesRoute(
                    navigateType: NavigateType.inner,
                  ));
                  addPostsViewModel.selectedCategoryBloc.onUpdateData(data);
                },
                child: Container(
                  height: 60,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: MyColors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      state.data != null
                          ? state.data!.title!.text.make()
                          : "Category".text.make(),
                      const Icon(FeatherIcons.chevronRight)
                    ],
                  ),
                ),
              );
            },
          ),
          20.h.heightBox,
          QuillToolbar.basic(controller: addPostsViewModel._controller),
          SizedBox(
            height: 500,
            child: QuillEditor.basic(
              controller: addPostsViewModel._controller,
              readOnly: false,
            ),
          )
        ],
      ),
    );
  }
}
