part of 'common_widget_imports.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.isLoading,
  });

  final String title;
  final VoidCallback onPressed;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: MyColors.primaryColor,
          minimumSize: Size(MediaQuery.of(context).size.width, 44.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11.r),
          )),
      child: isLoading == true
          ? const CircularProgressIndicator(
              color: MyColors.white,
            )
          : title.text.size(16.sp).fontWeight(FontWeight.w700).make(),
    );
  }
}
