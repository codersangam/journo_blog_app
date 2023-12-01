part of 'add_posts_imports.dart';

class AddPostsViewModel {
  final Repository repository;
  AddPostsViewModel({required this.repository});

  final ImagePicker picker = ImagePicker();
  final QuillController _controller = QuillController.basic();
  final TextEditingController textEditingController = TextEditingController();

  final VelocityBloc<XFile?> selectedImageBloc = VelocityBloc<XFile?>(null);
  final VelocityBloc<Tag?> selectedTagBloc = VelocityBloc<Tag?>(null);
  final VelocityBloc<Category?> selectedCategoryBloc =
      VelocityBloc<Category?>(null);

  final VelocityBloc<bool> isLoadingBloc = VelocityBloc<bool>(false);

  pickImage(context) async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      selectedImageBloc.onUpdateData(image);
    } else {
      VxToast.show(context, msg: "No Image Selected");
    }
  }

  clear() {
    selectedImageBloc.onUpdateData(null);
    textEditingController.clear();
    selectedTagBloc.onUpdateData(null);
    selectedCategoryBloc.onUpdateData(null);
    _controller.clear();
  }

  addPost(context, String userId) async {
    isLoadingBloc.onUpdateData(true);
    var data = await repository.postsRepo.addNewPost(
        textEditingController.text,
        textEditingController.text.toLowerCase().replaceAll(" ", "-"),
        selectedCategoryBloc.state.data!.id.toString(),
        selectedTagBloc.state.data!.id.toString(),
        _controller.document.toPlainText(),
        userId,
        selectedImageBloc.state.data!.path,
        selectedImageBloc.state.data!.path.split("/").last);

    if (data.status == 1) {
      isLoadingBloc.onUpdateData(false);
      clear();
      VxToast.show(context, msg: data.message.toString());
    }
  }
}
