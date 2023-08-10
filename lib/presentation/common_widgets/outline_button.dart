part of 'common_widget_imports.dart';

class OutlineButton extends StatelessWidget {
  const OutlineButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          minimumSize: Size(MediaQuery.of(context).size.width, 44.h),
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: MyColors.white),
            borderRadius: BorderRadius.circular(11.r),
          )),
      child: title.text.size(16.sp).fontWeight(FontWeight.w700).make(),
    );
  }
}
