part of 'home_imports.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late HomeViewModel homeViewModel;

  @override
  void initState() {
    homeViewModel = HomeViewModel(repository: context.read<Repository>());
    homeViewModel.fetchAllPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<VelocityBloc<HomeModel>, VelocityState<HomeModel>>(
          bloc: homeViewModel.postsBloc,
          builder: (context, state) {
            if (state is VelocityInitialState) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            } else if (state is VelocityUpdateState) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "Hello %s"
                            .i18n
                            .fill([
                              '${context.read<VelocityBloc<ProfileModel>>().state.data.userDetails!.name}'
                            ])
                            .text
                            .bold
                            .xl
                            .make(),
                        CachedNetworkImage(
                          imageUrl: context
                              .read<VelocityBloc<ProfileModel>>()
                              .state
                              .data
                              .userDetails!
                              .profilePhotoUrl
                              .toString(),
                          height: 60,
                          width: 60,
                        ),
                      ],
                    ).pSymmetric(h: 16),
                    40.verticalSpace,
                    VxSwiper.builder(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      itemCount: state.data.popularPosts!.length,
                      itemBuilder: ((context, index) {
                        var latestPosts = state.data.popularPosts![index];
                        var imagePath = latestPosts.featuredimage.toString();
                        return CachedNetworkImage(
                          imageUrl: imagePath,
                          fit: BoxFit.cover,
                        ).cornerRadius(20).pSymmetric(h: 10);
                      }),
                    ),
                    20.h.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "Latest Posts".text.size(16).make(),
                        "See All".text.size(16).make(),
                      ],
                    ).pSymmetric(h: 24.w),
                    10.h.heightBox,
                    ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      shrinkWrap: true,
                      itemCount: state.data.allPosts!.length,
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 20.h),
                      itemBuilder: (context, index) {
                        var latestPosts = state.data.allPosts![index];
                        var imagePath = latestPosts.featuredimage.toString();
                        return FadedScaleAnimation(
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () => AutoRouter.of(context)
                                    .push(HomeDetailsRoute(
                                  post: latestPosts,
                                  imagePath: imagePath,
                                )),
                                child: Hero(
                                  tag: Key(latestPosts.id.toString()),
                                  child: CachedNetworkImage(
                                    imageUrl: imagePath,
                                    height: 120,
                                    width: 180,
                                    fit: BoxFit.cover,
                                  ).cornerRadius(20),
                                ),
                              ),
                              10.w.widthBox,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  latestPosts.title!.text
                                      .size(16)
                                      .bold
                                      .maxLines(2)
                                      .make(),
                                  6.h.heightBox,
                                  Row(
                                    children: [
                                      const Icon(FeatherIcons.clock),
                                      8.horizontalSpace,
                                      latestPosts.createdAt!
                                          .timeAgo()
                                          .toString()
                                          .text
                                          .size(14)
                                          .make(),
                                    ],
                                  ),
                                  6.h.heightBox,
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      "${latestPosts.views} Views"
                                          .text
                                          .size(16)
                                          .make(),
                                      const Icon(FeatherIcons.bookmark),
                                    ],
                                  ),
                                ],
                              ).expand()
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
