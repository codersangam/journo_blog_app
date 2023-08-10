part of 'home_imports.dart';

@RoutePage()
class HomeDetails extends StatelessWidget {
  const HomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Netflix Will Charge Money for Password Sharing"
            .text
            .ellipsis
            .make(),
      ),
      body: ListView(
        children: [
          Image.asset(MyAssets.assetsImagesNetflix),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                10.h.heightBox,
                "Netflix Will Charge Money for Password Sharing"
                    .text
                    .bold
                    .xl2
                    .make(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(FeatherIcons.eye),
                    8.w.widthBox,
                    "147 Views".text.make(),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FeatherIcons.thumbsUp,
                        color: Colors.green,
                      ),
                    ),
                    "0".text.make(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FeatherIcons.thumbsDown,
                        color: Colors.red,
                      ),
                    ),
                    "0".text.make(),
                  ],
                ),
                "We have all heard about how Netflix wants to start charging extra money if your share passwords with people other than your housemates, with the OTT platform testing this feature in a few regions. This is now expected to roll out ‘more broadly‘ by this March. Netflix’s Paid Password Sharing Coming to More People In a recent earnings report, Netflix revealed that its paid-sharing initiative will reach more people by the end of Q1 2023, which will provide you with an option to pay more if you want to continue sharing your passwords. So, you could either discontinue the practice or ask the people you share your Netflix password with to pay more. Netflix anticipates that this change might attract some ‘cancel reaction‘ in many markets but will serve its long-term goal of increased revenue. The report says, “We anticipate that this will result in a very different quarterly paid net adds pattern in 2023, with paid net, adds likely to be greater in Q2’23 than in Q1’23.“ However, it hasn’t revealed any pricing or other details about the feature. To recall, the paid password sharing was rolled out as a test in Chile, Costa Rica, and Peru last year. A new add-on option was provided to people there, requiring others to verify the login. It also introduced the ability to transfer profiles and manage logged-in devices, which could further curb the whole practice of sharing a Netflix account with multiple people. It remains to be seen how this new feature is received, considering an earlier report didn’t showcase a positive side to this. While there’s no harm in paying some money to share a Netflix account, leaving the habit of using it for free won’t go away easily. We are yet to see when this reaches India and will keep you posted whenever this happens. The earnings report also announced that Netflix’s CEO Reed Hastings is stepping down to hand over the reins to the co-CEO Ted Sarandos and COO Greg Peters. Netflix also reported a growth in Q2 2022 revenue, although, it was less than what was reported in Q4 2021. So, what do you think about the wider rollout of paid password sharing? Do you think this will be a motivation or a demotivation to leave Netflix altogether? Let us know your thoughts in the comments below."
                    .text
                    .make(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
