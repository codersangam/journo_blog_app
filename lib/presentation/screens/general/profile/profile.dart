part of 'profile_imports.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late ProfileViewModel profileViewModel;

  @override
  void initState() {
    profileViewModel = ProfileViewModel(repository: context.read<Repository>());
    profileViewModel.getUserProfileData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => profileViewModel.logout(context),
            icon: const Icon(FeatherIcons.logOut).pOnly(right: 10),
          ),
        ],
      ),
      body:
          BlocBuilder<VelocityBloc<ProfileModel>, VelocityState<ProfileModel>>(
        bloc: profileViewModel.profileModelBloc,
        builder: (context, state) {
          if (state is VelocityInitialState) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if (state is VelocityUpdateState) {
            return RefreshIndicator(
              onRefresh: () => profileViewModel.getUserProfileData(context),
              child: ListView(
                children: [
                  Container(
                    height: 500,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: const BoxDecoration(
                      color: MyColors.primaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 70,
                            backgroundImage: NetworkImage(state
                                .data.userDetails!.profilePhotoUrl
                                .toString()),
                          ),
                          10.h.heightBox,
                          state.data.userDetails!.name!.text.bold.xl2.white
                              .make(),
                          state.data.userDetails!.email!.text.xl.white.make(),
                          20.h.heightBox,
                          state.data.userDetails!.about!.text.xl.center.white
                              .make(),
                          20.h.heightBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  state.data.postsCount!.text.white.bold.xl3
                                      .make(),
                                  "Posts".text.white.xl.make(),
                                ],
                              ),
                              Column(
                                children: [
                                  "0".text.white.bold.xl3.make(),
                                  "Following".text.white.xl.make(),
                                ],
                              ),
                              Column(
                                children: [
                                  "0".text.white.bold.xl3.make(),
                                  "Followers".text.white.xl.make(),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  20.h.heightBox,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "My Posts".text.xl3.bold.make(),
                        GridView.builder(
                          itemCount: state.data.posts!.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 13,
                                  childAspectRatio: 0.9),
                          itemBuilder: (context, index) {
                            var userPostsData = state.data.posts![index];
                            var imagePath = userPostsData.featuredimage
                                .toString()
                                .prepend("https://techblog.codersangam.com/")
                                .replaceAll("public", "storage");
                            return Column(
                              children: [
                                CachedNetworkImage(
                                        imageUrl: imagePath.toString())
                                    .cornerRadius(10),
                                6.h.heightBox,
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    userPostsData.title!.text.medium
                                        .maxLines(2)
                                        .make()
                                        .expand(),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                            FeatherIcons.moreVertical))
                                  ],
                                )
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
