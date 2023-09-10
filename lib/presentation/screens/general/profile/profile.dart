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
      body: ListView(
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
                  const CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage(MyAssets.assetsImagesNetflix),
                  ),
                  10.h.heightBox,
                  "Sangam".text.bold.xl2.white.make(),
                  "admin@admin.com".text.xl.white.make(),
                  20.h.heightBox,
                  "Sangam Singh AKA (Ronnie) is a software engineer who is more passionate about technology. His ambition towards technology is huge."
                      .text
                      .xl
                      .center
                      .white
                      .make(),
                  20.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          "6".text.white.bold.xl3.make(),
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
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 13,
                      childAspectRatio: 0.9),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Image.asset(MyAssets.assetsImagesNetflix)
                            .cornerRadius(10),
                        6.h.heightBox,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "Netflix Will Charge Money for Password Sharing"
                                .text
                                .medium
                                .make()
                                .expand(),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(FeatherIcons.moreVertical))
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
}
