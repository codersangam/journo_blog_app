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
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/journo_logo.png",
                  color: MyColors.primaryColor,
                  height: 42,
                  width: 139,
                ),
                63.heightBox,
                PageView(
                  controller: onBoardViewModel.pageController,
                  children: const [
                    OnBoardFirst(),
                    OnBoardSecond(),
                    OnBoardThird(),
                  ],
                ).expand(),
                61.heightBox,
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: MyColors.primaryColor,
                      minimumSize: Size(MediaQuery.of(context).size.width, 44),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11),
                      )),
                  child: "Get Started"
                      .text
                      .size(16)
                      .fontWeight(FontWeight.w700)
                      .make(),
                ),
                const SizedBox(height: 61),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Skip"
                        .text
                        .color(MyColors.primaryColor)
                        .size(16)
                        .fontWeight(FontWeight.w700)
                        .make(),
                    SmoothPageIndicator(
                      controller:
                          onBoardViewModel.pageController, // PageController
                      count: 3,
                      effect: const WormEffect(
                        activeDotColor: MyColors.primaryColor,
                        dotHeight: 12.0,
                        dotWidth: 12.0,
                      ), // your preferred effect
                      onDotClicked: (index) {},
                    ),
                    "Next"
                        .text
                        .color(MyColors.primaryColor)
                        .size(16)
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
