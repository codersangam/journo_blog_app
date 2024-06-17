part of 'auth_imports.dart';

@RoutePage()
class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            MyAssets.assetsImagesAuthBg,
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  MyAssets.assetsImagesJournoLogo,
                  height: 42.h,
                  width: 139.w,
                ).centered(),
                const Spacer(),
                "Explore the world,\nBillions of Thoughts."
                    .text
                    .size(28.sp)
                    .align(TextAlign.left)
                    .white
                    .fontWeight(FontWeight.w700)
                    .make(),
                20.h.heightBox,
                PrimaryButton(
                  title: "Login",
                  onPressed: () =>
                      AutoRouter.of(context).push(const LoginRoute()),
                ),
                12.h.heightBox,
                OutlineButton(
                  title: "Register",
                  onPressed: () =>
                      AutoRouter.of(context).push(const RegisterRoute()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
