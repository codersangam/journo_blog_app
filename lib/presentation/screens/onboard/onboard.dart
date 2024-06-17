part of 'onboard_imports.dart';

@RoutePage()
class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  OnBoardViewModel onBoardViewModel = OnBoardViewModel();

  @override
  void dispose() {
    onBoardViewModel.pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset(
          MyAssets.assetsImagesJournoLogo,
          color: MyColors.primaryColor,
          height: 42.h,
          width: 139.w,
        ),
        actions: [
          IconButton(
            onPressed: () {
              AutoRouter.of(context).push(const LanguageRoute());
            },
            icon: const Icon(
              FeatherIcons.globe,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                63.h.heightBox,
                PageView(
                  controller: onBoardViewModel.pageController,
                  children: const [
                    OnBoardFirst(),
                    OnBoardSecond(),
                    OnBoardThird(),
                  ],
                ).expand(),
                61.h.heightBox,
                PrimaryButton(
                  title: "Get Started".i18n,
                  onPressed: () => AutoRouter.of(context).popAndPush(
                    const AuthRoute(),
                  ),
                ),
                10.h.heightBox,
                SizedBox(height: 61.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Skip"
                        .i18n
                        .text
                        .color(MyColors.primaryColor)
                        .size(16.sp)
                        .fontWeight(FontWeight.w700)
                        .make(),
                    SmoothPageIndicator(
                      controller:
                          onBoardViewModel.pageController, // PageController
                      count: 3,
                      effect: WormEffect(
                        activeDotColor: MyColors.primaryColor,
                        dotHeight: 12.0,
                        dotWidth: 12.0,
                      ), // your preferred effect
                      onDotClicked: (index) {},
                    ),
                    "Next"
                        .i18n
                        .text
                        .color(MyColors.primaryColor)
                        .size(16.sp)
                        .fontWeight(FontWeight.w700)
                        .make(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
